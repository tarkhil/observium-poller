package Poller::Plugin::ports;
use Moose;
extends 'Poller::Plugin';
use RRDUtils;
use Utils;
use Data::Dumper;

use constant  { 
  ifHiSpeedLimit => 1000000000,
    ifHiSpeedMultiplier => 1000000
};
sub BUILD {
  SNMP::loadModules( qw/IF-MIB EtherLike-MIB/ );
}

=head1 Ports requests

All ports should respond to 'ifEntry', 'ifXEntry'

Also, we should query either dot3StatsEntry (more data) or dot3StatsDuplexStatus from "EtherLike-MIB"

For ADSL ports, we're using lots of OIDs from "ADSL-LINE-MIB"

For POE ports, "pethPsePortEntry" and "cpeExtPsePortEntry"

For CISCO, "dot1qPortVlanTable", "dot1qVlanCurrentEgressPorts", "dot1dBasePortIfIndex"

That's all. Processing is going to be much more complex than requesting

=head2 oids_walk

=cut

sub oids_walk { 
  my $self = shift;
  my ( $device ) = @_;
  my $oids = [ qw/ifEntry ifXEntry/ ];
  if ( $main::config->{etherlike_extended} ) {
    push @$oids, "dot3StatsEntry";
  }
  else {
    push @$oids, "dot3StatsDuplexStatus";
  }
  if ( $main::config->{adsl_enable} ) {
    if ( $device->count_ports( 'adsl' ) ) {
      SNMP::loadModules( qw/ADSL-LINE-MIB/ );
      push @$oids, '.1.3.6.1.2.1.10.94.1.1'; # Better take some extra data than do 10 times more requests
    }
  }
  if ( $main::config->{poe_enable} ) {
    SNMP::loadModules( qw/POWER-ETHERNET-MIB CISCO-POWER-ETHERNET-EXT-MIB/ );
    push @$oids, qw/pethPsePortEntry cpeExtPsePortEntry/;
  }
  if ( $device->{os_group} eq 'cisco' ) {
    SNMP::loadModules( qw/CISCO-PAGP-MIB CISCO-VTP-MIB CISCO-VLAN-MEMBERSHIP-MIB/ );
    push @$oids, qw/pagpOperationMode pagpPortState pagpPartnerDeviceId pagpPartnerLearnMethod
		    pagpPartnerIfIndex pagpPartnerGroupIfIndex pagpPartnerDeviceName
		    pagpEthcOperationMode pagpDeviceId pagpGroupIfIndex vmVlan vlanTrunkPortEncapsulationOperType
		    vlanTrunkPortNativeVlan
		   /;
  }
  else {
    ...;
  }
  return $oids;
}

sub is_port_valid {
  my ( $port ) = @_;
  return 0 unless defined $port->{ifName};
  return 0 unless defined $port->{ifType};
  return 0 if $port->{ifName} =~ /(^((ng|sl)[0-9]))|voip-null|virtual\-|unrouted|eobc|lp0|-atm|faith0|container
				|async|plip|\-physical|container|bluetooth|isatap|ras
				|qos|span [rs]p|sslvpn|pppoe\-/ix;
  return 0 if $port->{ifType} =~ /voice(Encap|EM|FXO|FXS|OverATM|OverFrameRelay|OverIp)|ds[0123]|atmSubInterface|aal5|shdsl|mpls|usb/i;
  return 1;
}

sub process {
  my ( $self, $device ) = @_;
  $self->SUPER::process( $device ) || return 0;

  my $pdata = $device->{snmp_data}->{ports};
  # Detect new, deleted, undeleted ports
  foreach my $ifindex ( keys %$pdata ) {
    my $port = $pdata->{$ifindex};
    # Is the port valid? Valid port must have description, name
    # and should not be a virtual port
    my $dbport = $device->ports->find( { ifindex => $ifindex } );
    if (is_port_valid( $port ) ) {
      # Let's try to find port in database
      if ( defined $dbport )  {
	if ( $dbport->deleted ) {
	  # Undelete port
	  $dbport->deleted(0);
	  $dbport->log_event( "Port DELETED mark removed", 'interface' );
	}
      }
      else {
	debug_msg(1, "Port ", $device->hostname,':', $ifindex, ' (', $port->{ifName},") not found, creating\n");
	$dbport = $device->create_port( $port );
      }
    }
    else {
      if ( defined $dbport && !$dbport->deleted ) {
	#print "Device ", $device->device_id, " port $ifindex (",$port->{ifName},"), port_id ",$dbport->port_id," is invalid, delete \n";
	$dbport->deleted(1);
	$dbport->log_event( "Port was marked as DELETED", 'interface' );
      }
    }
    $dbport->update() if defined $dbport; # Port was not valid, object in database was never created
  }
  # Now, check all ports already in database
  my $dbports = $device->get_ports();
  while ( my $dbport = $dbports->next() ) {
    # Status, RRDs, all that stuff
    my $port = $pdata->{ $dbport->ifindex };
    if ( !$dbport->disabled ) {
      if ( exists $pdata->{ $dbport->ifindex } ) {
      my $polled = time();
      my $state = $dbport->get_state; # Force state creation
      if ( !defined $state ) {
	die "Could not get state for ", $dbport->device->hostname, ": ", $dbport->ifindex, " (", $dbport->ifname, ") port id is ", $dbport->port_id, "\n";
      }
      $state->poll_period( $polled - $state->poll_time );
      $state->poll_time( $polled );
      # Store port data
      fix_port_data( $dbport, $port );
      # Process port parameters
      process_data_oids( $dbport, $port );
      # Calculate rate and difference, store traffic counters      
      process_stat_oids( $dbport, $port );
      
      update_rrds( $dbport, $port );

      $state->update();
    }
      else {
	if ( defined $dbport->ifindex && !$dbport->deleted ) {
	  $dbport->deleted(1);
	  $dbport->log_event( "Port was marked as DELETED", 'interface' );
	}
      }
    }
    else {
      debug_msg(1, "Port ", $dbport->port_id, " is disabled\n");
    }
    $dbport->update;

  }
  
  # Dump. Just dump
  debug_msg(2, Dumper $device->{snmp_data} );
}

sub update_rrds {
  my ( $dport, $port ) = @_;
  # Make RRD filename
  my $portname =  $dport->device->hostname . "/port-" . $dport->ifindex . ".rrd";
  RRDUtils::InitRRD ( $main::config->{rrddir}, $portname, 
		      "  \
      DS:INOCTETS:DERIVE:600:0:12500000000 \
      DS:OUTOCTETS:DERIVE:600:0:12500000000 \
      DS:INERRORS:DERIVE:600:0:12500000000 \
      DS:OUTERRORS:DERIVE:600:0:12500000000 \
      DS:INUCASTPKTS:DERIVE:600:0:12500000000 \
      DS:OUTUCASTPKTS:DERIVE:600:0:12500000000 \
      DS:INNUCASTPKTS:DERIVE:600:0:12500000000 \
      DS:OUTNUCASTPKTS:DERIVE:600:0:12500000000 \
      DS:INDISCARDS:DERIVE:600:0:12500000000 \
      DS:OUTDISCARDS:DERIVE:600:0:12500000000 \
      DS:INUNKNOWNPROTOS:DERIVE:600:0:12500000000 \
      DS:INBROADCASTPKTS:DERIVE:600:0:12500000000 \
      DS:OUTBROADCASTPKTS:DERIVE:600:0:12500000000 \
      DS:INMULTICASTPKTS:DERIVE:600:0:12500000000 \
      DS:OUTMULTICASTPKTS:DERIVE:600:0:12500000000 "
		    );

  RRDUtils::UpdateRRDMap ( $main::config->{rrddir}, $portname,
			   [ map { $port->{ $_ } } qw /
							ifInOctets ifOutOctets ifInErrors ifOutErrors
							ifInUcastPkts ifOutUcastPkts ifInNUcastPkts ifOutNUcastPkts
							ifInDiscards ifOutDiscards ifInUnknownProtos
							ifInBroadcastPkts ifOutBroadcastPkts ifInMulticastPkts ifOutMulticastPkts
						      / ] );
}


sub process_stat_oids {
  my ( $dbport, $port ) = @_;
  # Fix data for 64-bit ports 
  my @traffic_names = ( qw/Octets UcastPkts BroadcastPkts MulticastPkts/ );
  if ( $dbport->port_64bit ) {
    map { $port->{'ifIn' . $_ } = $port->{ 'ifHCIn' . $_ } } @traffic_names;
    map { $port->{'ifOut' . $_ } = $port->{ 'ifHCOut' . $_ } } @traffic_names;
  }

  my $state = $dbport->state;

  foreach my $oid ( @{ stat_oids() } ) {
    my $col = lc($oid);
    my $old = $state->get_column( $col );
    my $new = $port->{ $oid };
    next unless defined $new;
    my $diff = $new - $old;
    my $rate;
    if ( $diff < 0 ) {
      print "Wrapped\n";
      $rate = 0;
    }
    elsif ( $dbport->state->poll_period > 0 ) {
      $rate = $diff / $dbport->state->poll_period;
    }
    $state->set_columns( { $col => $new, $col.'_rate' => $rate, $col.'_delta' => $diff, } );
    debug_msg( 2, "Port ", $dbport->port_id, " $oid was $old became $new delta $diff rate $rate\n" );
  }
  my $ifinbits_rate  = int( $state->ifinoctets_rate ) * 8;
  my $ifoutbits_rate = int( $state->ifoutoctets_rate ) * 8;
  # Update percentage if applicable
  if ( $dbport->ifspeed ) {
    $state->set_columns( { ifinoctets_perc  => int( $ifinbits_rate / $dbport->ifspeed * 100 ),
			   ifoutoctets_perc => int( $ifoutbits_rate / $dbport->ifspeed * 100 ),
			 } );
  }
  
  foreach my $param ( qw/octets ucastpkts errors/ ) {
    $state->set_column( 'if'.$param.'_rate' => $state->get_column( 'ifin'.$param.'_rate' ) 
			+ $state->get_column( 'ifout'.$param.'_rate' ) ); 
  }
  
  $state->update;
}

sub process_data_oids {
  my ( $dbport, $port ) = @_;
  foreach my $oid ( @{ data_oids() } ) {
    if ( defined $dbport->get_column( lc($oid) ) ) {
      if ( defined $port->{ $oid } ) {
	if ( $dbport->get_column( lc($oid) ) ne $port->{ $oid }  ) {
	  $dbport->log_event( $oid . ": ".$dbport->get_column( lc($oid) )." -> " . $port->{ $oid },  'interface' );
	  $dbport->set_column( lc($oid) => $port->{ $oid } );
	}
      }
      else {
	$dbport->log_event( $oid . ": ".$dbport->get_column( lc($oid) )." -> NULL",  'interface' );
	$dbport->set_column( lc($oid) => undef );
      }
    }
    else {
      if ( defined $port->{ $oid } ) {
	$dbport->log_event( $oid . ": NULL -> " . $port->{ $oid },  'interface' );
	$dbport->set_column( lc($oid) => $port->{ $oid } );
      }
    }
  }
}

sub fix_port_data {
  my ( $dbport, $port ) = @_;
  # Did we ever check 64bintess?
  if ( !defined $dbport->port_64bit ) {
    $dbport->port_64bit ( defined($port->{ifHCInOctets}) && defined ($port->{ifHCOutOctets}) );
  }
  # Store MAC address
  # Happliy it is NOT converted
  if ( $port->{ ifPhysAddress } =~ /^0x([[:xdigit:]]{12})$/ ) { 
    $dbport->ifphysaddress( $1 );
  }
  # Fix speed
  if ( $port->{ ifHighSpeed } && $port->{ ifSpeed } > ifHiSpeedLimit ) {
    $dbport->ifspeed( $port->{ ifSpeed } * ifHiSpeedMultiplier );
  } 
  else {
    $dbport->ifspeed( $port->{ ifSpeed } );
  }
  
  if ( exists $port->{ dot3StatsDuplexStatus } ) {
    $dbport->ifduplex( $port->{ dot3StatsDuplexStatus } );
  }
  else {
    $dbport->ifduplex( $port->{ ifDuplex } );
  }
  
  if ( exists $port->{ vlanTrunkPortEncapsulationOperType } 
       && $port->{ vlanTrunkPortEncapsulationOperType } ne "notApplicable" ) {
    $dbport->iftrunk( $port->{ vlanTrunkPortEncapsulationOperType } );
    if ( exists $port->{ vlanTrunkPortNativeVlan } ) {
      $dbport->ifvlan( $port->{ vlanTrunkPortNativeVlan } );
    }
  }
  
  if ( exists $port->{ vmVlan } ) {
    $dbport->ifvlan( $port->{ vmVlan } );
  }
  
  elsif ( exists $port->{ dot1qPvid } ) {
    $dbport->ifvlan( $port->{ dot1qPvid } );
  }
  else {
    $dbport->ifvlan( $port->{ ifVlan } );
  }
  # Everything but aix-specific done here
}

has oids_re => ( is => 'ro', isa => 'Str', lazy_build => 1 );
sub _build_oids_re {
  my $self = shift;
  return '^('.join('|', @{$self->oids_array}).')\.(\d+)$';
}

sub store_data {
  my $self = shift;
  my ( $device, $oid, $value ) = @_;
  if ( $oid =~ /^(.*)\.(\d+)$/ ) {
    debug_msg( 2, "Storing $1:$2 : $value\n" ); 
    $device->{snmp_data}->{ports}->{$2}->{$1} = $value;
  }
  else {
    print "Cannot parse $oid\n";
  }
}

sub stat_oids { [ qw/ifInOctets ifOutOctets ifInErrors ifOutErrors ifInUcastPkts ifOutUcastPkts/ ] }



sub data_oids { [ 'ifName','ifDescr','ifAlias', 'ifAdminStatus', 'ifOperStatus', 
		  'ifMtu', 'ifHighSpeed', 'ifType', 
		  'ifPromiscuousMode','ifConnectorPresent', 'ifTrunk' ] }

has oids_array => ( is => 'ro',
		    isa => 'ArrayRef[Str]',
		    default => sub {
		      my $oids = 
			[ qw/
			      
			      ifName ifDescr ifAlias ifAdminStatus ifOperStatus 
			      ifMtu ifSpeed ifHighSpeed ifType ifPhysAddress 
			      ifPromiscuousMode ifConnectorPresent ifDuplex
			      ifTrunk ifVlan ifInErrors ifOutErrors 
			      ifInUcastPkts ifOutUcastPkts ifInNUcastPkts 
			      ifOutNUcastPkts ifHCInMulticastPkts 
			      ifHCInBroadcastPkts ifHCOutMulticastPkts 
			      ifHCOutBroadcastPkts ifInOctets ifOutOctets 
			      ifHCInOctets ifHCOutOctets ifInDiscards ifOutDiscards 
			      ifInUnknownProtos ifInBroadcastPkts ifOutBroadcastPkts 
			      ifInMulticastPkts ifOutMulticastPktsifInOctets 
			      ifOutOctets ifInErrors ifOutErrors ifInUcastPkts 
			      ifOutUcastPktsdot3StatsAlignmentErrors dot3StatsFCSErrors 
			      dot3StatsSingleCollisionFrames dot3StatsMultipleCollisionFrames 
			      dot3StatsSQETestErrors dot3StatsDeferredTransmissions 
			      dot3StatsDuplexStatus 
			      dot3StatsLateCollisions dot3StatsExcessiveCollisions 
			      dot3StatsInternalMacTransmitErrors dot3StatsCarrierSenseErrors 
			      dot3StatsFrameTooLongs dot3StatsInternalMacReceiveErrors 
			      dot3StatsSymbolErrorspagpOperationMode pagpPortState 
			      pagpPartnerDeviceId pagpPartnerLearnMethod pagpPartnerIfIndex 
			      pagpPartnerGroupIfIndex pagpPartnerDeviceName 
			      pagpEthcOperationMode pagpDeviceId 
			      pagpGroupIfIndexcpeExtPsePortEnable cpeExtPsePortDiscoverMode 
			      cpeExtPsePortDeviceDetected cpeExtPsePortIeeePd 
			      cpeExtPsePortAdditionalStatus cpeExtPsePortPwrMax 
			      cpeExtPsePortPwrAllocated cpeExtPsePortPwrAvailable 
			      cpeExtPsePortPwrConsumption cpeExtPsePortMaxPwrDrawn 
			      cpeExtPsePortEntPhyIndex cpeExtPsePortEntPhyIndex 
			      cpeExtPsePortPolicingCapable cpeExtPsePortPolicingEnable 
			      cpeExtPsePortPolicingAction cpeExtPsePortPwrManAllocpethPsePortAdminEnable 
			      pethPsePortPowerPairsControlAbility pethPsePortPowerPairs 
			      pethPsePortDetectionStatus pethPsePortPowerPriority 
			      pethPsePortMPSAbsentCounter pethPsePortType 
			      pethPsePortPowerClassifications pethPsePortInvalidSignatureCounter 
			      pethPsePortPowerDeniedCounter pethPsePortOverLoadCounter 
			      pethPsePortShortCounter pethMainPseConsumptionPower
			    / ];
		      if ( $main::config->{etherlike_extended} ) {
			...;
		      }
		      if ( $main::config->{adsl_enable} ) {
			push @$oids, qw/
					 AtucCurrSnrMgn AtucCurrAtn AtucCurrOutputPwr AtucCurrAttainableRate 
					 AtucChanCurrTxRate AturCurrSnrMgn AturCurrAtn AturCurrOutputPwr 
					 AturCurrAttainableRate AturChanCurrTxRate AtucPerfLofs AtucPerfLoss 
					 AtucPerfLprs AtucPerfESs AtucPerfInits AturPerfLofs AturPerfLoss AturPerfLprs 
					 AturPerfESs AtucChanCorrectedBlks AtucChanUncorrectBlks AturChanCorrectedBlks 
					 AturChanUncorrectBlksadslLineCoding adslLineType adslAtucInvVendorID 
					 adslAtucInvVersionNumber adslAtucCurrSnrMgn adslAtucCurrAtn adslAtucCurrOutputPwr 
					 adslAtucCurrAttainableRate adslAturInvSerialNumber adslAturInvVendorID 
					 adslAturInvVersionNumber adslAtucChanCurrTxRate adslAturChanCurrTxRate 
					 adslAturCurrSnrMgn adslAturCurrAtn adslAturCurrOutputPwr 
					 adslAturCurrAttainableRateadslAtucCurrSnrMgn adslAtucCurrAtn 
					 adslAtucCurrOutputPwr adslAturCurrSnrMgn adslAturCurrAtn adslAturCurrOutputPwr
				       /;
		      }
		      if ( $main::config->{poe_enable} ) {
			...;
		      }
		      return $oids;
		    } );


1;
