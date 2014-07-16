use utf8;
package Schema::Result::MuninPlugin;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::MuninPlugin

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

=head1 TABLE: C<munin_plugins>

=cut

__PACKAGE__->table("munin_plugins");

=head1 ACCESSORS

=head2 mplug_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 mplug_type

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 mplug_instance

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 mplug_category

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 mplug_title

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 mplug_info

  data_type: 'text'
  is_nullable: 1

=head2 mplug_vlabel

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 mplug_args

  data_type: 'varchar'
  is_nullable: 1
  size: 512

=head2 mplug_total

  data_type: 'binary'
  default_value: 0
  is_nullable: 0
  size: 1

=head2 mplug_graph

  data_type: 'binary'
  default_value: 1
  is_nullable: 0
  size: 1

=cut

__PACKAGE__->add_columns(
  "mplug_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "mplug_type",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "mplug_instance",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "mplug_category",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "mplug_title",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "mplug_info",
  { data_type => "text", is_nullable => 1 },
  "mplug_vlabel",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "mplug_args",
  { data_type => "varchar", is_nullable => 1, size => 512 },
  "mplug_total",
  { data_type => "binary", default_value => 0, is_nullable => 0, size => 1 },
  "mplug_graph",
  { data_type => "binary", default_value => 1, is_nullable => 0, size => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</mplug_id>

=back

=cut

__PACKAGE__->set_primary_key("mplug_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<dev_mplug>

=over 4

=item * L</device_id>

=item * L</mplug_type>

=back

=cut

__PACKAGE__->add_unique_constraint("dev_mplug", ["device_id", "mplug_type"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6I7+uIbS1BtxaqJ9yTNW9w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
