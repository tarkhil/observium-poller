use utf8;
package Schema::Result::MuninPluginsD;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::MuninPluginsD

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

=head1 TABLE: C<munin_plugins_ds>

=cut

__PACKAGE__->table("munin_plugins_ds");

=head1 ACCESSORS

=head2 mplug_id

  data_type: 'integer'
  is_nullable: 0

=head2 ds_name

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ds_type

  data_type: 'enum'
  default_value: 'GAUGE'
  extra: {list => ["COUNTER","ABSOLUTE","DERIVE","GAUGE"]}
  is_nullable: 0

=head2 ds_label

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 ds_cdef

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 ds_draw

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 ds_graph

  data_type: 'enum'
  default_value: 'yes'
  extra: {list => ["no","yes"]}
  is_nullable: 0

=head2 ds_info

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 ds_extinfo

  data_type: 'text'
  is_nullable: 0

=head2 ds_max

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ds_min

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ds_negative

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ds_warning

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ds_critical

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ds_colour

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ds_sum

  data_type: 'text'
  is_nullable: 0

=head2 ds_stack

  data_type: 'text'
  is_nullable: 0

=head2 ds_line

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "mplug_id",
  { data_type => "integer", is_nullable => 0 },
  "ds_name",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ds_type",
  {
    data_type => "enum",
    default_value => "GAUGE",
    extra => { list => ["COUNTER", "ABSOLUTE", "DERIVE", "GAUGE"] },
    is_nullable => 0,
  },
  "ds_label",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "ds_cdef",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "ds_draw",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "ds_graph",
  {
    data_type => "enum",
    default_value => "yes",
    extra => { list => ["no", "yes"] },
    is_nullable => 0,
  },
  "ds_info",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "ds_extinfo",
  { data_type => "text", is_nullable => 0 },
  "ds_max",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ds_min",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ds_negative",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ds_warning",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ds_critical",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ds_colour",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ds_sum",
  { data_type => "text", is_nullable => 0 },
  "ds_stack",
  { data_type => "text", is_nullable => 0 },
  "ds_line",
  { data_type => "varchar", is_nullable => 0, size => 64 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<splug_id>

=over 4

=item * L</mplug_id>

=item * L</ds_name>

=back

=cut

__PACKAGE__->add_unique_constraint("splug_id", ["mplug_id", "ds_name"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wgXD4Hzti1iNOIzugkJZvA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
