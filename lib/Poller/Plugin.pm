package Poller::Plugin;
use Moose;
use Net::SNMP::Util::OID qw(system* interfaces* at* ip* icmp* tcp* udp* egp* snmp* tcp*);
use SNMP;
use Net::SNMP;
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
  debug_msg(1, 'Requesting ', $device->hostname, "\n" );
#  print "Building ", $self->name, " request for ", $device->hostname, "\n";
  if ( $self->can( 'oids_get' )  ) {
    my $oids_get = $self->oids_get( $device );
    debug_msg(3, "Getting : ", Dumper $oids_get );
    if ( defined($oids_get) && (scalar @$oids_get > 0) ) {
      $device->{snmp}->get_request(
				   -varbindlist => $self->oids( $oids_get ),
				   -callback => [ sub{ $self->snmp_get_callback(@_); }, $device ],
				  );
    }
  }
  if ( $self->can( 'oids_walk' ) ) {
    my $oids_walk = $self->oids_walk( $device );
    debug_msg(3, "Walking : ", Dumper $oids_walk );
    if ( defined($oids_walk) && (scalar @$oids_walk > 0) ) {
      # Need to do bulkwalks one by one
      map {
	my $oid = Utils::translateToOid( $_ );
	debug_msg(2, "Requesting bulk for $_ ( $oid )\n" );
	$device->{snmp}->get_bulk_request(
					  -varbindlist => [ $oid ],
					  -callback => [ sub{ $self->snmp_walk_callback(@_); }, $oid, $device ],
					  -maxrepetitions => 50,
					 );
      } @$oids_walk;
    }
  }
}

sub snmp_get_callback {
  my ($self, $session, $device) = @_; 
  debug_msg(4, Dumper $session );
  my $list = $session->var_bind_list();
  if ( !defined $list ) {
    $device->{snmp_error} = $session->error();
    print "get_callback: ", $session->error(), "\n";
    return;
  }
  debug_msg(3, "Get callback: ", Dumper $list);
  map { $device->{snmp_data}->{ SNMP::translateObj( $_ ) } = $list->{$_} } keys %$list;
  debug_msg(3,"SNMP data: ", Dumper $device->{snmp_data});
}

sub snmp_walk_callback {
  my ($self, $session, $oid_start, $device) = @_; 
  debug_msg(3, Dumper $session );
  my $list = $session->var_bind_list();
  if ( !defined $list ) {
    print "walk_callback: ", $session->error(), " requesting $oid_start\n";
    $device->{snmp_error} = $session->error();
    return;
  }
  my $next = undef;
  my @names = $session->var_bind_names();
  debug_msg(3, "Walk callback: ", Dumper($list), " names ", join(', ', @names), ", base oid: $oid_start (",
	    SNMP::translateObj( $oid_start ), ")\n");
  while (@names) {
    $next = shift @names;
    debug_msg( 2, "Next name: $next (", SNMP::translateObj( $next ),")\n" );
    if (!Net::SNMP::oid_base_match($oid_start, $next)) {
      debug_msg( 2, "Done.\n" );
      return; # Table is done.
    }
    debug_msg( 2, "Storing ", SNMP::translateObj( $next ), ' -> ', $list->{$next}, "\n" );
    $self->store_data( $device, SNMP::translateObj( $next ),  $list->{$next} );
  }
  debug_msg(2,"Need more data\n");
  my $result = $session->get_bulk_request(
					  -varbindlist    => [ $next ],
					  -callback => [ sub{ $self->snmp_walk_callback(@_); }, $oid_start, $device ],
					  -maxrepetitions => 50,
					 );
  
  if (!defined $result) {
    printf "ERROR: %s.\n", $session->error();
  }
  return;
}

sub store_data {
  my $self = shift;
  my ( $device, $oid, $value ) = @_;
  $device->{snmp_data}->{ $oid } = $value;

}

sub process {
  my ( $self, $device ) = @_;
  debug_msg(1, "Processing ", $device->hostname, "\n");
  return exists $device->{snmp_data};
}

__PACKAGE__->meta->make_immutable;
1;
