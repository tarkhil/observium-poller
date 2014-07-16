use utf8;
package Schema::Result::OspfArea;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::OspfArea

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

=head1 TABLE: C<ospf_areas>

=cut

__PACKAGE__->table("ospf_areas");

=head1 ACCESSORS

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 ospfareaid

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfauthtype

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 ospfimportasextern

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 ospfspfruns

  data_type: 'integer'
  is_nullable: 0

=head2 ospfareabdrrtrcount

  data_type: 'integer'
  is_nullable: 0

=head2 ospfasbdrrtrcount

  data_type: 'integer'
  is_nullable: 0

=head2 ospfarealsacount

  data_type: 'integer'
  is_nullable: 0

=head2 ospfarealsacksumsum

  data_type: 'integer'
  is_nullable: 0

=head2 ospfareasummary

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 ospfareastatus

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "ospfareaid",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfauthtype",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "ospfimportasextern",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "ospfspfruns",
  { data_type => "integer", is_nullable => 0 },
  "ospfareabdrrtrcount",
  { data_type => "integer", is_nullable => 0 },
  "ospfasbdrrtrcount",
  { data_type => "integer", is_nullable => 0 },
  "ospfarealsacount",
  { data_type => "integer", is_nullable => 0 },
  "ospfarealsacksumsum",
  { data_type => "integer", is_nullable => 0 },
  "ospfareasummary",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "ospfareastatus",
  { data_type => "varchar", is_nullable => 0, size => 64 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<device_area>

=over 4

=item * L</device_id>

=item * L</ospfareaid>

=back

=cut

__PACKAGE__->add_unique_constraint("device_area", ["device_id", "ospfareaid"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+Roxz/MZxSLNxuZAbJHcmQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
