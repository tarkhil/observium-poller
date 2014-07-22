package Poller::Plugin;
use Moose;
use Net::SNMP::Util::OID qw(system* interfaces* at* ip* icmp* tcp* udp* egp* snmp* tcp*);
use SNMP;
use Data::Dumper;
use Utils;

has 'name' => ( is => 'ro', isa => 'Str' );
has 'parent' => ( is => 'ro', isa => 'Object' );
#has 'oids_get' => ( is => 'ro', reader => '_get_oids_get' );

sub oids {
  my $self = shift;
  my ( $oids ) = shift;
  return [ map { Utils::translateToOid( $_ ) } @$oids ];
}

sub request {
  my ( $self, $device ) = @_;
#  print "Building ", $self->name, " request for ", $device->hostname, "\n";
  my $oids_get = $self->oids_get( $device );
  if ( defined($oids_get) && (scalar @$oids_get > 0) ) {
    debug_msg(2, Dumper $oids_get );
    $device->{snmp}->get_request(
				 -varbindlist => $self->oids( $oids_get ),
				 -callback => [ sub{ $self->snmp_get_callback(@_); }, $device ],
				);
  }
}

sub snmp_get_callback {
  my ($self, $session, $device) = @_; 
  my $list = $session->var_bind_list();
  debug_msg(1, Dumper $list);
  map { $device->{snmp_data}->{ SNMP::translateObj( $_ ) } = $list->{$_} } keys %$list;
  debug_msg(1,"SNMP data: ", Dumper $device->{snmp_data});
}

sub process {
  my ( $self, $device ) = @_;
  return exists $device->{snmp_data};
}

__PACKAGE__->meta->make_immutable;
1;
