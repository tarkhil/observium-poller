use utf8;
package Schema::Result::Mempool;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Mempool

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

=head1 TABLE: C<mempools>

=cut

__PACKAGE__->table("mempools");

=head1 ACCESSORS

=head2 mempool_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 mempool_index

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 entphysicalindex

  data_type: 'integer'
  is_nullable: 1

=head2 hrdeviceindex

  data_type: 'integer'
  is_nullable: 1

=head2 mempool_type

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 mempool_precision

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 mempool_descr

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 mempool_deleted

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "mempool_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "mempool_index",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "entphysicalindex",
  { data_type => "integer", is_nullable => 1 },
  "hrdeviceindex",
  { data_type => "integer", is_nullable => 1 },
  "mempool_type",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "mempool_precision",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "mempool_descr",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "mempool_deleted",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</mempool_id>

=back

=cut

__PACKAGE__->set_primary_key("mempool_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9zTNsH4iVqxwp5wI9z5c5Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
