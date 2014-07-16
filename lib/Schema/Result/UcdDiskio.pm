use utf8;
package Schema::Result::UcdDiskio;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::UcdDiskio

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

=head1 TABLE: C<ucd_diskio>

=cut

__PACKAGE__->table("ucd_diskio");

=head1 ACCESSORS

=head2 diskio_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 diskio_index

  data_type: 'integer'
  is_nullable: 0

=head2 diskio_descr

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "diskio_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "diskio_index",
  { data_type => "integer", is_nullable => 0 },
  "diskio_descr",
  { data_type => "varchar", is_nullable => 0, size => 32 },
);

=head1 PRIMARY KEY

=over 4

=item * L</diskio_id>

=back

=cut

__PACKAGE__->set_primary_key("diskio_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cG8vPlLsZzvt8piJ4TGxrw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
