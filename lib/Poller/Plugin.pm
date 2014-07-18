package Poller::Plugin;
use Moose;
use Net::SNMP::Util::OID qw(system* interfaces* at* ip* icmp* tcp* udp* egp* snmp* tcp*);
use Data::Dumper;
has 'name' => ( is => 'ro', isa => 'Str' );
has 'parent' => ( is => 'ro', isa => 'Object' );
#has 'oids_get' => ( is => 'ro', reader => '_get_oids_get' );

sub oids {
  my $self = shift;
  my ( $oids ) = shift;
  return [ map { oid( $_ ) } @$oids ];
}

sub request {
  my ( $self, $device ) = @_;
  print "Building ", $self->name, " request for ", $device->hostname, "\n";
  my $oids_get = $self->oids_get( $device );
  if ( scalar @$oids_get > 0 ) {
    $device->{snmp}->get_request(
				 -varbindlist => $self->oids( $oids_get ),
				 -callback => [ sub{ $self->snmp_get_callback(@_); }, $device ],
				);
  }
}

sub snmp_get_callback {
  my ($self, $session, $device) = @_; 
  print "Callback ", $self->name, " for ", $device->hostname, "\n"; 
  my $list = $session->var_bind_list();
  print Dumper $list;
  map { $device->{snmp_data}->{ oidt( $_ ) } = $list->{$_} } keys %$list;
  print "SNMP data: ", Dumper $device->{snmp_data};

}


__PACKAGE__->meta->make_immutable;
1;
