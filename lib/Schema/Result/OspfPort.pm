use utf8;
package Schema::Result::OspfPort;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::OspfPort

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

=head1 TABLE: C<ospf_ports>

=cut

__PACKAGE__->table("ospf_ports");

=head1 ACCESSORS

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=head2 ospf_port_id

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfifipaddress

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfaddresslessif

  data_type: 'integer'
  is_nullable: 0

=head2 ospfifareaid

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfiftype

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 ospfifadminstat

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 ospfifrtrpriority

  data_type: 'integer'
  is_nullable: 1

=head2 ospfiftransitdelay

  data_type: 'integer'
  is_nullable: 1

=head2 ospfifretransinterval

  data_type: 'integer'
  is_nullable: 1

=head2 ospfifhellointerval

  data_type: 'integer'
  is_nullable: 1

=head2 ospfifrtrdeadinterval

  data_type: 'integer'
  is_nullable: 1

=head2 ospfifpollinterval

  data_type: 'integer'
  is_nullable: 1

=head2 ospfifstate

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 ospfifdesignatedrouter

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 ospfifbackupdesignatedrouter

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 ospfifevents

  data_type: 'integer'
  is_nullable: 1

=head2 ospfifauthkey

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 ospfifstatus

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 ospfifmulticastforwarding

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 ospfifdemand

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 ospfifauthtype

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=cut

__PACKAGE__->add_columns(
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "port_id",
  { data_type => "integer", is_nullable => 0 },
  "ospf_port_id",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfifipaddress",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfaddresslessif",
  { data_type => "integer", is_nullable => 0 },
  "ospfifareaid",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfiftype",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "ospfifadminstat",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "ospfifrtrpriority",
  { data_type => "integer", is_nullable => 1 },
  "ospfiftransitdelay",
  { data_type => "integer", is_nullable => 1 },
  "ospfifretransinterval",
  { data_type => "integer", is_nullable => 1 },
  "ospfifhellointerval",
  { data_type => "integer", is_nullable => 1 },
  "ospfifrtrdeadinterval",
  { data_type => "integer", is_nullable => 1 },
  "ospfifpollinterval",
  { data_type => "integer", is_nullable => 1 },
  "ospfifstate",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "ospfifdesignatedrouter",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "ospfifbackupdesignatedrouter",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "ospfifevents",
  { data_type => "integer", is_nullable => 1 },
  "ospfifauthkey",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "ospfifstatus",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "ospfifmulticastforwarding",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "ospfifdemand",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "ospfifauthtype",
  { data_type => "varchar", is_nullable => 1, size => 32 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<device_id>

=over 4

=item * L</device_id>

=item * L</ospf_port_id>

=back

=cut

__PACKAGE__->add_unique_constraint("device_id", ["device_id", "ospf_port_id"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UfhHRN+zG1kLLpagL9nC2A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
