package Poller;
use strict;
use Moose;
use Tie::IxHash;
use Class::Load;
use Moose::Util::TypeConstraints;

subtype 'Schema' => as Object => where { $_->isa('DBIx::Class::Schema') };

has 'schema' => (
		 is => 'rw'
);

has plugins => (
  isa => 'ArrayRef[Str]',
  is  => 'rw' ,
);


has plugin_hash => (
  isa        => 'Maybe[HashRef]' ,
  is         => 'ro' ,
  init_arg   => undef ,
  lazy_build => 1 ,
);

sub _build_plugin_hash {
  my $self = shift;

  return $self->plugin_list ? { map { $_->name => $_ } @{ $self->plugin_list } } : undef;
}

has plugin_list => (
  isa        => 'Maybe[ArrayRef]' ,
  is         => 'ro' ,
  init_arg   => undef ,
  lazy_build => 1 ,
);


sub _map_plugins_to_libs {
  my( $self ) = @_;
  my $class = ref $self;

  tie my %map, "Tie::IxHash";
  foreach ( @{ $self->plugins } ) {
    $map{$_} = ( s/^\+// ) ? $_ : "${class}::Plugin::$_";
  }
  return \%map;
}

sub _build_plugin_list {
  my( $self ) = shift;

  return undef unless $self->plugins;

  my $plugin_list = [];

  my $plugin_name_map = $self->_map_plugins_to_libs();

  foreach my $plugin_name ( keys %$plugin_name_map ) {
    my $plugin_lib = $plugin_name_map->{$plugin_name};

    ### FIXME should have some Try::Tiny here, with a parameter to control
    ### what happens when a class doesn't load -- ignore, warn, die
    Class::Load::load_class( $plugin_lib );
    print "$plugin_lib loaded\n";
    my $plugin = $plugin_lib->new({
      name   => $plugin_name ,
      parent => $self ,
    });
    print "Object created\n";
    push @{ $plugin_list } , $plugin;
  }
  print "Returning ", ref $plugin_list, "\n";
  return $plugin_list;
};

sub BUILD {
  my $self = shift;
  $self->plugins( [ $self->schema->resultset('Poller')->search( { enabled => 1 } )->get_column( 'name' )->all() ] );
  # Force loading here, to crash early in case of any problems
  $self->plugin_list();
  return 1;
}

sub requests {
  my ( $self, $device ) = @_;
  my $polls = $device->get_pollers();
  map { $self->plugin_hash->{$_}->request( $device ); } $polls->get_column('name')->all();
}


__PACKAGE__->meta->make_immutable;
1;
