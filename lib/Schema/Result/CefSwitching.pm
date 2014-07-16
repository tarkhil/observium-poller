use utf8;
package Schema::Result::CefSwitching;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::CefSwitching

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

=head1 TABLE: C<cef_switching>

=cut

__PACKAGE__->table("cef_switching");

=head1 ACCESSORS

=head2 cef_switching_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 entphysicalindex

  data_type: 'integer'
  is_nullable: 0

=head2 afi

  data_type: 'varchar'
  is_nullable: 0
  size: 4

=head2 cef_index

  data_type: 'integer'
  is_nullable: 0

=head2 cef_path

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 drop

  data_type: 'integer'
  is_nullable: 0

=head2 punt

  data_type: 'integer'
  is_nullable: 0

=head2 punt2host

  data_type: 'integer'
  is_nullable: 0

=head2 drop_prev

  data_type: 'integer'
  is_nullable: 0

=head2 punt_prev

  data_type: 'integer'
  is_nullable: 0

=head2 punt2host_prev

  data_type: 'integer'
  is_nullable: 0

=head2 updated

  data_type: 'integer'
  is_nullable: 0

=head2 updated_prev

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "cef_switching_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "entphysicalindex",
  { data_type => "integer", is_nullable => 0 },
  "afi",
  { data_type => "varchar", is_nullable => 0, size => 4 },
  "cef_index",
  { data_type => "integer", is_nullable => 0 },
  "cef_path",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "drop",
  { data_type => "integer", is_nullable => 0 },
  "punt",
  { data_type => "integer", is_nullable => 0 },
  "punt2host",
  { data_type => "integer", is_nullable => 0 },
  "drop_prev",
  { data_type => "integer", is_nullable => 0 },
  "punt_prev",
  { data_type => "integer", is_nullable => 0 },
  "punt2host_prev",
  { data_type => "integer", is_nullable => 0 },
  "updated",
  { data_type => "integer", is_nullable => 0 },
  "updated_prev",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</cef_switching_id>

=back

=cut

__PACKAGE__->set_primary_key("cef_switching_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<device_id>

=over 4

=item * L</device_id>

=item * L</entphysicalindex>

=item * L</afi>

=item * L</cef_index>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "device_id",
  ["device_id", "entphysicalindex", "afi", "cef_index"],
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bQ5K0PIamCW4A/4NSKE+VA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
