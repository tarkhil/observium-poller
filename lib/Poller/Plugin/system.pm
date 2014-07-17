package Poller::Plugin::system;
use Moose;
extends 'Poller::Plugin';

sub request {
  my ( $self, $device ) = @_;
  print "Building ", $self->name, " request for ", $device->hostname, "\n";
}

1;
