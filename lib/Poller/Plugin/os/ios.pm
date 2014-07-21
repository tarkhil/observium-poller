package Poller::Plugin::os::ios;
use Moose;
use SNMP;

sub BUILD {
  SNMP::loadModules('ENTITY-MIB','OLD-CISCO-CHASSIS-MIB','CISCO-PRODUCTS-MIB');
}

sub oids_get { [ qw/entPhysicalModelName.1 entPhysicalContainedIn.1 entPhysicalName.1 entPhysicalSoftwareRev.1 entPhysicalModelName.1001 entPhysicalContainedIn.1001 cardDescr.1 cardSlotNumber.1/ ] };

sub process {
  my ($self, $device) = @_;
#  print $device->{snmp_data}->{'sysObjectID.0'}, " => ",  SNMP::translateObj($device->{snmp_data}->{'sysObjectID.0'}), "\n";
  $device->{snmp_data}->{'sysObjectID.0'} =  SNMP::translateObj($device->{snmp_data}->{'sysObjectID.0'});
  return 1;
}

1;
