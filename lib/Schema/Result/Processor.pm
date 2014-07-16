use utf8;
package Schema::Result::Processor;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Processor

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

=head1 TABLE: C<processors>

=cut

__PACKAGE__->table("processors");

=head1 ACCESSORS

=head2 processor_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 entphysicalindex

  data_type: 'integer'
  is_nullable: 1

=head2 hrdeviceindex

  data_type: 'integer'
  is_nullable: 1

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 processor_oid

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 processor_index

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 processor_type

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 processor_descr

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 processor_precision

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "processor_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "entphysicalindex",
  { data_type => "integer", is_nullable => 1 },
  "hrdeviceindex",
  { data_type => "integer", is_nullable => 1 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "processor_oid",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "processor_index",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "processor_type",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "processor_descr",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "processor_precision",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</processor_id>

=back

=cut

__PACKAGE__->set_primary_key("processor_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8TnXDq6QjdZRF0iqnnPYHA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
