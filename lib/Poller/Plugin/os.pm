package Poller::Plugin::os;
use Moose;
extends 'Poller::Plugin';
has 'ostype' => ( is => 'rw', isa => 'Str' );

sub oids_get { 
  my $self = shift;
  my ( $device = @_ );
  my $os = $device->os;
  
}



1;
