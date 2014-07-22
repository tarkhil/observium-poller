use utf8;
package Schema::Result::ProcessorsState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::ProcessorsState - Processor Usage

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<`processors-state`>

=cut

__PACKAGE__->table(\"`processors-state`");

=head1 ACCESSORS

=head2 processor_id

  data_type: 'integer'
  is_nullable: 0

=head2 processor_usage

  data_type: 'integer'
  is_nullable: 0

=head2 processor_polled

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "processor_id",
  { data_type => "integer", is_nullable => 0 },
  "processor_usage",
  { data_type => "integer", is_nullable => 0 },
  "processor_polled",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</processor_id>

=back

=cut

__PACKAGE__->set_primary_key("processor_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NJdOS+Z85ROfN1hJNHcYJw

__PACKAGE__->belongs_to( processor => 'Schema::Result::Processor', 
			 'processor_id' );

1;
