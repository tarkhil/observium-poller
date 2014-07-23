package Poller::Plugin::ports;
use Moose;
extends 'Poller::Plugin';
use RRDUtils;
use Utils;
use Data::Dumper;

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
  # Look for SNMPed ports
  foreach my $ifindex ( keys %$pdata ) {
    my $port = $pdata->{$ifindex};
    # Is the port valid? Valid port must have description, name
    # and should not be a virtual port
    if (is_port_valid( $port ) ) {
      # Let's try to find port in database
      if ( my $dbport = $device->ports->find( { ifindex => $ifindex } ) )  {
#	print "Port $ifindex found, in database it is ",
#	  $dbport->ifname, " in SNMP it is ", $port->{ifName}, "\n";
      }
      else {
	print "Port ", Dumper($port),"not found\n";
      }
    }
    else {
      print "Port $ifindex (",$port->{ifName},")is invalid, delete \n";
      #      $port->deleted(1);
      #      $device->log_event( "Port was marked as DELETED", 'interface', $port->port_id );
      #      $port->update;
    }
  }
  # Dump. Just dump
#  print Dumper $device->{snmp_data};
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
