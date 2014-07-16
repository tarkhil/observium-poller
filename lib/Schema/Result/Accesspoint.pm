use utf8;
package Schema::Result::Accesspoint;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Accesspoint - Access Points

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

=head1 TABLE: C<accesspoints>

=cut

__PACKAGE__->table("accesspoints");

=head1 ACCESSORS

=head2 accesspoint_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 radio_number

  data_type: 'tinyint'
  is_nullable: 1

=head2 type

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 mac_addr

  data_type: 'varchar'
  is_nullable: 0
  size: 24

=head2 deleted

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "accesspoint_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "radio_number",
  { data_type => "tinyint", is_nullable => 1 },
  "type",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "mac_addr",
  { data_type => "varchar", is_nullable => 0, size => 24 },
  "deleted",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</accesspoint_id>

=back

=cut

__PACKAGE__->set_primary_key("accesspoint_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XQmbyVhXI4a3r8zXhkYozw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
