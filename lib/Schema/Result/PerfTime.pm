use utf8;
package Schema::Result::PerfTime;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::PerfTime

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

=head1 TABLE: C<perf_times>

=cut

__PACKAGE__->table("perf_times");

=head1 ACCESSORS

=head2 type

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 doing

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 start

  data_type: 'integer'
  is_nullable: 0

=head2 duration

  data_type: 'double precision'
  is_nullable: 0
  size: [8,2]

=head2 devices

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "type",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "doing",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "start",
  { data_type => "integer", is_nullable => 0 },
  "duration",
  { data_type => "double precision", is_nullable => 0, size => [8, 2] },
  "devices",
  { data_type => "integer", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oDwqdvpF69thLMkUogHnkw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
