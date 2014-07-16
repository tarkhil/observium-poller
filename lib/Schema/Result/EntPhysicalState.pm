use utf8;
package Schema::Result::EntPhysicalState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::EntPhysicalState

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

=head1 TABLE: C<`entPhysical-state`>

=cut

__PACKAGE__->table(\"`entPhysical-state`");

=head1 ACCESSORS

=head2 entphysical_state_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 entphysicalindex

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 subindex

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 group

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 key

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "entphysical_state_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "entphysicalindex",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "subindex",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "group",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "key",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</entphysical_state_id>

=back

=cut

__PACKAGE__->set_primary_key("entphysical_state_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FRZc1yrFtvE5gbMp5uB7tQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
