package Poller::Plugin::os;
use Moose;
extends 'Poller::Plugin';
use Class::Load;
has poller_object => ( is => 'rw', isa => 'Ref' );

sub oids_get { 
  my $self = shift;
  print "Getting oids\n";
  my ( $device ) = @_;
  my $os = $device->os;
  my $class = ref $self;
  my $poller = undef;
  my $osclass = $class.'::'.$os;
  my $osgclass = ( defined $device->{os_group} ? $class.'::'.$device->{os_group} : undef );
  if ( Class::Load::try_load_class( $osclass ) ) {
#    print "poller is $osclass\n";
    $poller = $osclass;
  } 
  elsif ( defined $osgclass && Class::Load::try_load_class( $osgclass ) ) {
#    print "poller is $osgclass\n";
    $poller = $osgclass;
  }
  else {
#    print "poller is UNDEFINED\n";
  }
  if ( defined $poller ) {
    $self->poller_object( new $poller );
    return $self->poller_object->oids_get();
  }
  return undef;
}

sub process {
  my ( $self, $device ) = @_;
  $self->SUPER::process( $device ) || return 0;
  $self->poller_object->process( $device ) || return 0;
  return 1;
}


1;
