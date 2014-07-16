use utf8;
package Schema::Result::UcdDiskioState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::UcdDiskioState

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

=head1 TABLE: C<`ucd_diskio-state`>

=cut

__PACKAGE__->table(\"`ucd_diskio-state`");

=head1 ACCESSORS

=head2 diskio_id

  data_type: 'integer'
  is_nullable: 0

=head2 diskionreadx

  data_type: 'integer'
  is_nullable: 0

=head2 diskionreadx_rate

  data_type: 'integer'
  is_nullable: 0

=head2 diskionwrittenx

  data_type: 'integer'
  is_nullable: 0

=head2 diskionwrittenx_rate

  data_type: 'integer'
  is_nullable: 0

=head2 diskioreads

  data_type: 'integer'
  is_nullable: 0

=head2 diskioreads_rate

  data_type: 'integer'
  is_nullable: 0

=head2 diskiowrites

  data_type: 'integer'
  is_nullable: 0

=head2 diskiowrites_rate

  data_type: 'integer'
  is_nullable: 0

=head2 diskio_polled

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "diskio_id",
  { data_type => "integer", is_nullable => 0 },
  "diskionreadx",
  { data_type => "integer", is_nullable => 0 },
  "diskionreadx_rate",
  { data_type => "integer", is_nullable => 0 },
  "diskionwrittenx",
  { data_type => "integer", is_nullable => 0 },
  "diskionwrittenx_rate",
  { data_type => "integer", is_nullable => 0 },
  "diskioreads",
  { data_type => "integer", is_nullable => 0 },
  "diskioreads_rate",
  { data_type => "integer", is_nullable => 0 },
  "diskiowrites",
  { data_type => "integer", is_nullable => 0 },
  "diskiowrites_rate",
  { data_type => "integer", is_nullable => 0 },
  "diskio_polled",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</diskio_id>

=back

=cut

__PACKAGE__->set_primary_key("diskio_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5wMADBY2sXXl6Uk6yALWOg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
