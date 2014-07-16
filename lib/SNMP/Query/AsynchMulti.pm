#!/usr/bin/perl

package SNMP::Query::AsynchMulti;

# Pragmas
use strict;
use warnings;

# Standard
use Carp;

# Cpan
use SNMP;

# This comes in handy so we don't pass bogus
# parameters to SNMP::Session->new()
our @valid_sess_params = qw(
  DestHost
  Community
  Version
  RemotePort
  Timeout
  Retries
  RetryNoSuch
  SecName
  SecLevel
  SecEngineId
  ContextEngineId
  Context
  AuthProto
  AuthPass
  PrivProto
  PrivPass
  AuthMasterKey
  PrivMasterKey
  AuthLocalizedKey
  PrivLocalizedKey
  VarFormats
  TypeFormats
  UseLongNames
  UseSprintValue
  UseEnums
  UseNumeric
  BestGuess
  NonIncreasing
);

#----------------------------------------------------------
# Constructor
sub new {
    my $class = shift;
    my $self = bless {}, $class;

    $self->{query_stack}       = [];
    $self->{results}           = [];
    $self->{max_in_flight}     = 10;
    $self->{current_in_flight} = 0;
    $self->{total_this_run}    = 0;
    $self->{grand_total}       = 0;

    return $self;
  }

# Verifies that the named parameter is a subref
sub _check_param_callback {
    my $self       = shift;
    my $param_name = shift;    # string, hash key
    my $params     = shift;    # hashref
    return 1 unless exists $params->{$param_name};
    croak "Bad parameter for [$param_name] - not a CODE ref"
      if ref $params->{$param_name} ne 'CODE';
    return 1;
  }

# TODO Fill in the code and use in the add() or _add_getbulk_query() methods
# Verifies that the named parameter is something the SNMP
# module can use as a VarBind or VarBindList.
sub _check_param_varbinds {
    my $self       = shift;
    my $param_name = shift;    # string, hash key
    my $params     = shift;    # hashref

  }

sub add {
    my $self   = shift;
    my $params = shift;

    my $query_stack = $self->{query_stack};

    # These are required for all query ops so make sure they're present.
    my $varbinds = $params->{VarBinds}
      || croak "Bad or missing parameter [VarBinds]";
    my $query_type = $params->{QueryType}
      || croak "Bad or missing parameter [QueryType]";

    # Make sure our callback params are valid.
    $self->_check_param_callback( 'PreCallback',  $params );
    $self->_check_param_callback( 'PostCallback', $params );

    if ( $query_type eq 'getbulk' ) {
        my $query       = $self->_make_getbulk_query($params);
        my $query_stack = $self->{query_stack};
        push @$query_stack, $query;
      }
    else {
        croak "Attempt to add using unknown query type: $query_type\n";
      }

    return 1;
  }

sub _make_getbulk_query {
    my $self = shift;
    my ($query_info) = @_;

    # These params are required for a getbulk query op.
    my $non_repeaters =
      exists $query_info->{NonRepeaters}
      ? $query_info->{NonRepeaters}
	: croak "Bad or missing parameter [NonRepeaters]";
    my $max_repeaters =
      exists $query_info->{MaxRepeaters}
      ? $query_info->{MaxRepeaters}
	: croak "Bad or missing parameter [MaxRepeaters]";

    # Currently, these are validated in the add() method, so no need here.
    my $preop_callback  = $query_info->{PreCallback};
    my $postop_callback = $query_info->{PostCallback};

    # TODO I may want to add a method to validate
    # and/or transform the VarBinds parameter
    my $varbinds = $query_info->{VarBinds};

    # Parse out the parameters for creating the session.
    # I really think I should be validating them better here...
    # Maybe I need a separate subroutine...
    # TODO write the routine described above.
    my %sess_params;
    $sess_params{$_} = $query_info->{$_}
      for grep { exists $query_info->{$_} } @valid_sess_params;

    return sub {

        my $callback = sub {
            my $bulkwalk_results = shift;

            # Store the results and info about the query for later...
            push @{ $self->{results} }, $query_info, $bulkwalk_results;

            $postop_callback->() if $postop_callback;

            $self->{current_in_flight}--;

            if ( scalar @{ $self->{query_stack} } ) {
                my $next_query = pop @{ $self->{query_stack} };
                return $next_query->();
	      }
            $self->{current_in_flight} <= 0 ? return SNMP::finish() : return 1;
        };

        my $sess = SNMP::Session->new(%sess_params);

        $preop_callback->() if $preop_callback;

        $self->{current_in_flight}++;
        $self->{total_this_run}++;
        $self->{grand_total}++;

        return $sess->bulkwalk( $non_repeaters, $max_repeaters, $varbinds,
            [$callback] );
    };
  }

sub current_in_flight { shift->{current_in_flight} }
sub total_this_run    { shift->{total_this_run} }
sub grand_total       { shift->{grand_total} }

sub shuffle { }

sub execute {
    my $self   = shift;
    my $params = shift;

    # The KeepLast option can come in handy if, for example, another
    # thread or process is working on the contents of the results
    # array from a previous execution and may not finish before the
    # next execution.
    @{ $self->{results} } = ()
      unless (

        # I'll make my OWN idioms from now on, HAHA! (You can explicitly
        # set keeplast or it will use the object's default)
        defined $params->{KeepLast} ? $params->{KeepLast} : $self->{KeepLast}
      );

    # Determine our maximum concurrency level for this run
    my $max_in_flight = $params->{InFlight} || $self->{max_in_flight};

    # Make a copy of the stack in case we want to run the same query
    my $query_stack_ref  = $self->{query_stack};
    my @query_stack_copy = @{ $self->{query_stack} };

    # Set some counters
    $self->{current_in_flight} = 0;
    $self->{total_this_run}    = 0;

    # Begin issuing operations
    while ( scalar @$query_stack_ref ) {
        my $query = pop @$query_stack_ref;
        $query->();
        last if $self->{current_in_flight} >= $max_in_flight;
      }

    # Wait for the ops to complete, or time-out (if specified)
    $params->{MasterTimeout}
      ? SNMP::MainLoop( $params->{MasterTimeout}, &SNMP::finish() )
	: SNMP::MainLoop();

    # Reset the stack for the next run.
    $self->{query_stack} = \@query_stack_copy;

    return $self->get_results();
  }

#  Returns a reference to a copy of the results of the last query execution
sub get_results {
    return \@{ shift->{results} };
  }

1;
__END__
