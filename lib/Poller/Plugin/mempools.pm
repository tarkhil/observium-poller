package Poller::Plugin::mempools;
use Moose;
extends 'Poller::Plugin';
use Class::Load;
use RRDUtils;
use Utils;
use Data::Dumper;
# TODO: CHANGE TO ARRAY

has poller_objects => ( is => 'rw', isa => 'Maybe[HashRef]', default => sub { {}; } );

sub oids_walk { 
  my $self = shift;
  my ( $device ) = @_;
  my $oids = undef;
  my $class = ref $self;
  my $mempools = $device->get_mempools( [qw/mempool_type/] );
  while ( my $memp = $mempools->next() ) {
    my $poller = undef;
    my $poller_class = $class.'::'.$memp->mempool_type;
    if ( !exists $self->poller_objects->{$memp->mempool_type} ) {
      if ( Class::Load::try_load_class( $poller_class ) ) {
	$self->poller_objects->{$memp->mempool_type} = new $poller_class;
      } 
      else {
	print "Unknown memory: ", $memp->mempool_type, ", not polling\n";
      }
    }
    map { $oids->{$_} = 1; } @{$self->poller_objects->{$memp->mempool_type}->oids_walk()};
  }
  if ( defined $oids ) {
    return [ keys %$oids ];
  } 
  else {
    return undef;
  }
}

sub process {
  my ( $self, $device ) = @_;
  $self->SUPER::process( $device ) || return 0;
  my $mempools = $device->get_mempools( [qw/mempool_type mempool_index mempool_id/] );
  while ( my $memp = $mempools->next() ) {
    my $percent;
    if ( exists $self->poller_objects->{$memp->mempool_type} ) {
      $self->poller_objects->{$memp->mempool_type}->process( $device, $memp );
    }
    else {
      print "Unknown memory: ", $memp->mempool_type, ", not processing\n";
      next;
    }
    if ( $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{total} > 0 ) {      
      $percent = $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{percent} = 
	sprintf( '%.2f', $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{used} /
		 $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{total} * 100 );
    }
    else {
      $percent = $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{percent} = 'U';
    }
    my $memprrd  =  $device->hostname . "/" . safename("mempool-" . $memp->mempool_type . "-" . $memp->mempool_index . ".rrd");
    RRDUtils::InitRRD ( $main::config->{rrddir}, $memprrd, " DS:used:GAUGE:600:0:U DS:free:GAUGE:600:0:U " );
    RRDUtils::UpdateRRD ( $main::config->{rrddir}, $memprrd, "N:".$device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{used}
			  .':'.$device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{free} );
    $memp->update_or_create_related( 'state', { mempool_polled => time,
						mempool_perc => $percent,
						map +( 'mempool_'.$_ => $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{$_} ),
						qw/total free used largestfree lowestfree/ } );
						
  }
}


1;
