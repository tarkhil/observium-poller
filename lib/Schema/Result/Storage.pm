use utf8;
package Schema::Result::Storage;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Storage

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

=head1 TABLE: C<storage>

=cut

__PACKAGE__->table("storage");

=head1 ACCESSORS

=head2 storage_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 storage_mib

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 storage_index

  data_type: 'integer'
  is_nullable: 0

=head2 storage_type

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 storage_descr

  data_type: 'text'
  is_nullable: 0

=head2 storage_perc_warn

  data_type: 'integer'
  default_value: 60
  is_nullable: 1

=head2 storage_deleted

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "storage_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "storage_mib",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "storage_index",
  { data_type => "integer", is_nullable => 0 },
  "storage_type",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "storage_descr",
  { data_type => "text", is_nullable => 0 },
  "storage_perc_warn",
  { data_type => "integer", default_value => 60, is_nullable => 1 },
  "storage_deleted",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</storage_id>

=back

=cut

__PACKAGE__->set_primary_key("storage_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<index_unique>

=over 4

=item * L</device_id>

=item * L</storage_mib>

=item * L</storage_index>

=back

=cut

__PACKAGE__->add_unique_constraint("index_unique", ["device_id", "storage_mib", "storage_index"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NiDHtYehQpAlARVDB+EcRw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
