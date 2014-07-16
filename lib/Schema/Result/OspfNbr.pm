use utf8;
package Schema::Result::OspfNbr;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::OspfNbr

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

=head1 TABLE: C<ospf_nbrs>

=cut

__PACKAGE__->table("ospf_nbrs");

=head1 ACCESSORS

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=head2 ospf_nbr_id

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfnbripaddr

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfnbraddresslessindex

  data_type: 'integer'
  is_nullable: 0

=head2 ospfnbrrtrid

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfnbroptions

  data_type: 'integer'
  is_nullable: 0

=head2 ospfnbrpriority

  data_type: 'integer'
  is_nullable: 0

=head2 ospfnbrstate

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfnbrevents

  data_type: 'integer'
  is_nullable: 0

=head2 ospfnbrlsretransqlen

  data_type: 'integer'
  is_nullable: 0

=head2 ospfnbmanbrstatus

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfnbmanbrpermanence

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfnbrhellosuppressed

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "port_id",
  { data_type => "integer", is_nullable => 0 },
  "ospf_nbr_id",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfnbripaddr",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfnbraddresslessindex",
  { data_type => "integer", is_nullable => 0 },
  "ospfnbrrtrid",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfnbroptions",
  { data_type => "integer", is_nullable => 0 },
  "ospfnbrpriority",
  { data_type => "integer", is_nullable => 0 },
  "ospfnbrstate",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfnbrevents",
  { data_type => "integer", is_nullable => 0 },
  "ospfnbrlsretransqlen",
  { data_type => "integer", is_nullable => 0 },
  "ospfnbmanbrstatus",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfnbmanbrpermanence",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfnbrhellosuppressed",
  { data_type => "varchar", is_nullable => 0, size => 32 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<device_id>

=over 4

=item * L</device_id>

=item * L</ospf_nbr_id>

=back

=cut

__PACKAGE__->add_unique_constraint("device_id", ["device_id", "ospf_nbr_id"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JI9z9dSFrQ5dZszXyGDyZQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
