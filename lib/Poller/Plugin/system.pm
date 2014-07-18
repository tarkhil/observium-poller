package Poller::Plugin::system;
use Moose;
extends 'Poller::Plugin';
sub oids_get { [qw/sysUpTime.0 sysLocation.0 sysContact.0 sysName.0 sysDescr.0 sysObjectID.0 hrSystemUptime.0 /] };

1;
