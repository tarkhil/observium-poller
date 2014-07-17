package Utils;
use base qw/Exporter/;
@EXPORT    = qw( EX_OK EX_USAGE EX_DATAERR EX_NOINPUT EX_NOUSER EX_NOHOST 
		 EX_UNAVAILABLE EX_SOFTWARE EX_OSERR  EX_OSFILE EX_CANTCREAT 
		 EX_IOERR EX_TEMPFAIL EX_PROTOCOL  EX_NOPERM  EX_CONFIG 
		 debug_msg fix_snmpver);

sub EX_OK () {0;}
sub EX__BASE () {64;}
sub EX_USAGE () {64;}
sub EX_DATAERR () {65;}
sub EX_NOINPUT () {66;}
sub EX_NOUSER () {67;}
sub EX_NOHOST () {68;}
sub EX_UNAVAILABLE () {69;}
sub EX_SOFTWARE () {70;}
sub EX_OSERR () {71;}
sub EX_OSFILE () {72;}
sub EX_CANTCREAT () {73;}
sub EX_IOERR () {74;}
sub EX_TEMPFAIL () {75;}
sub EX_PROTOCOL () {76;}
sub EX_NOPERM () {77;}
sub EX_CONFIG () {78;}
sub EX__MAX () {78;}

sub debug_msg {
  my $level = shift;
  return if $level > $main::debug;
  print @_;
}

sub snmp_cb {
  my ( $session, $snmp ) = @_;
  print "Running CB\n";
  
  my $list = $session->var_bind_list();
  # if (!defined $list) {
  #   printf "ERROR: %s\n", $session->error();
  #   return;
  # }
  
  # # Loop through each of the OIDs in the response and assign
  # # the key/value pairs to the reference that was passed with
  # # the callback.  Make sure that we are still in the table
  # # before assigning the key/values.
  
  # my @names = $session->var_bind_names();
  # my $next  = undef;
  
  # while (@names) {
  #   $next = shift @names;
  #   print "$next\n";
  #   if (!oid_base_match($OID_ifTable, $next)) {
  #     return; # Table is done.
  #   }
  #   $table->{$next} = $list->{$next};
  # }
  
  # # Table is not done, send another request, starting at the last
  # # OBJECT IDENTIFIER in the response.  No need to include the
  # # calback argument, the same callback that was specified for the
  # # original request will be used.
  
  # my $result = $session->get_bulk_request(
  # 					  -varbindlist    => [ $next ],
  # 					  -maxrepetitions => 10,
  # 					 );
  
  # if (!defined $result) {
  #   printf "ERROR: %s.\n", $session->error();
  # }
  
  return;
}

1;
