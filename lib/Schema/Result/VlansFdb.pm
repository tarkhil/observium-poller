use utf8;
package Schema::Result::VlansFdb;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::VlansFdb

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

=head1 TABLE: C<vlans_fdb>

=cut

__PACKAGE__->table("vlans_fdb");

=head1 ACCESSORS

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 vlan_id

  data_type: 'integer'
  is_nullable: 0

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=head2 mac_address

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 fdb_status

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "vlan_id",
  { data_type => "integer", is_nullable => 0 },
  "port_id",
  { data_type => "integer", is_nullable => 0 },
  "mac_address",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "fdb_status",
  { data_type => "varchar", is_nullable => 0, size => 32 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<dev_vlan_mac>

=over 4

=item * L</device_id>

=item * L</vlan_id>

=item * L</mac_address>

=back

=cut

__PACKAGE__->add_unique_constraint("dev_vlan_mac", ["device_id", "vlan_id", "mac_address"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vmo3dAECidyUSbaJorTzIw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
