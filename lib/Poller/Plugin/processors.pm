package Poller::Plugin::processors;
use Moose;
extends 'Poller::Plugin';
use Class::Load;
use RRDUtils;
use Utils;
use Data::Dumper;
has poller_object => ( is => 'rw', isa => 'Ref' );

sub oids_get { 
  my $self = shift;
  my ( $device ) = @_;
  my $oids = undef;
  my $class = ref $self;
  my $processors = $device->get_processors( [qw/processor_type processor_oid/] );
  while ( my $proc = $processors->next() ) {
    my $poller = undef;
    my $poller_class = $class.'::'.$proc->processor_type;
    if ( Class::Load::try_load_class( $poller_class ) ) {
      $self->poller_object( new $poller_class );
      push @$oids, @{$self->poller_object->oids_get()};
    } 
    else {
      push @$oids, $proc->processor_oid;
    }
  }
  return $oids;
}

sub process {
  my ( $self, $device ) = @_;
  $self->SUPER::process( $device ) || return 0;
  my $processors = $device->get_processors( [qw/processor_index processor_precision processor_type processor_oid processor_id/] );
  while ( my $proc = $processors->next() ) {
    my $procrrd  =  $device->hostname . "/" . safename("processor-" . $proc->processor_type . "-" . $proc->processor_index . ".rrd");
    RRDUtils::InitRRD ($main::config->{rrddir}, $procrrd, " \
     DS:usage:GAUGE:600:-273:1000 ");
    $proc->processor_precision( 1 ) unless defined $proc->processor_precision;
    my $load = sprintf( '%.2f', $device->{snmp_data}->{ $proc->processor_oid_name } / $proc->processor_precision );
    RRDUtils::UpdateRRD( $main::config->{rrddir}, $procrrd, "N:".$load );
    # Update that crazy database as well
    $proc->update_or_create_related( 'state', { processor_polled => time, processor_usage => $load } );
  }
  return 1;
}


1;
