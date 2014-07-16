use utf8;
package Schema::Result::DevicesAttrib;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::DevicesAttrib

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

=head1 TABLE: C<devices_attribs>

=cut

__PACKAGE__->table("devices_attribs");

=head1 ACCESSORS

=head2 attrib_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 attrib_type

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 attrib_value

  data_type: 'text'
  is_nullable: 0

=head2 updated

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "attrib_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "attrib_type",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "attrib_value",
  { data_type => "text", is_nullable => 0 },
  "updated",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</attrib_id>

=back

=cut

__PACKAGE__->set_primary_key("attrib_id");

=head1 RELATIONS

=head2 device

Type: belongs_to

Related object: L<Schema::Result::Device>

=cut

__PACKAGE__->belongs_to(
  "device",
  "Schema::Result::Device",
  { device_id => "device_id" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "RESTRICT" },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 14:22:42
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:R9v2YorLBhXHgfcoKNgeqA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
