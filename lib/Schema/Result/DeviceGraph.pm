use utf8;
package Schema::Result::DeviceGraph;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::DeviceGraph

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

=head1 TABLE: C<device_graphs>

=cut

__PACKAGE__->table("device_graphs");

=head1 ACCESSORS

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 graph

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "graph",
  { data_type => "varchar", is_nullable => 0, size => 32 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tKPUpHohEV9W5aWB+qaBeA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
