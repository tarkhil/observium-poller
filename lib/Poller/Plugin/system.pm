package Poller::Plugin::system;
use Moose;
extends 'Poller::Plugin';
sub oids_get { [qw/sysUpTime sysLocation sysContact sysName sysDescr sysObjectID/] };

1;
