package Poller::Plugin::system;
use Moose;
extends 'Poller::Plugin';
sub oids_get { [qw/sysUpTime.0 sysLocation.0 sysContact.0 sysName.0 sysDescr.0 sysObjectID.0 hrSystemUptime.0 snmpEngineTime.0/] };
use Utils;

sub process {
  my ( $self, $device ) = @_;
  $self->SUPER::process( $device ) || return 0;
  map { $device->set_column( lc($_) => $device->{snmp_data}->{$_.'.0'} ) } qw/sysDescr sysObjectID/;
  $device->set_column( sysname => lc( $device->{snmp_data}->{ 'sysName.0' } ) );
  # Process uptime
  my $uptime = undef;
  if ( $device->{snmp_data}->{'hrSystemUptime.0'} =~ m/no.*such/i  ) {
    # Here should be MUCH more complicated calculations
    $uptime =  $device->{snmp_data}->{'snmpEngineTime.0'};
  } else {
    ...;
  }
  #  print "device ",$device->hostname," is up ", Utils::formatUptime($device->uptime), "\n";
  if ( $uptime < $device->uptime ) {
    # Reboot
    #    print $device->hostname, ' rebooted after '.Utils::formatUptime($device->uptime), "\n";
    $device->log_event( 'Device rebooted after '.Utils::formatUptime($device->uptime), 'reboot', $device->uptime );
  }
  $device->uptime( $uptime );
  return 1;
}


1;
