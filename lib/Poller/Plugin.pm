package Poller::Plugin;
use Moose;

has 'name' => ( is => 'ro', isa => 'Str' );
has 'parent' => ( is => 'ro', isa => 'Object' );

__PACKAGE__->meta->make_immutable;
1;
