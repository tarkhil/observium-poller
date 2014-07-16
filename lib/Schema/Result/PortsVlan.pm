use utf8;
package Schema::Result::PortsVlan;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::PortsVlan

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

=head1 TABLE: C<ports_vlans>

=cut

__PACKAGE__->table("ports_vlans");

=head1 ACCESSORS

=head2 port_vlan_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=head2 vlan

  data_type: 'integer'
  is_nullable: 0

=head2 baseport

  data_type: 'integer'
  is_nullable: 0

=head2 priority

  data_type: 'bigint'
  is_nullable: 0

=head2 state

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 cost

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "port_vlan_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "port_id",
  { data_type => "integer", is_nullable => 0 },
  "vlan",
  { data_type => "integer", is_nullable => 0 },
  "baseport",
  { data_type => "integer", is_nullable => 0 },
  "priority",
  { data_type => "bigint", is_nullable => 0 },
  "state",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "cost",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</port_vlan_id>

=back

=cut

__PACKAGE__->set_primary_key("port_vlan_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<unique>

=over 4

=item * L</device_id>

=item * L</port_id>

=item * L</vlan>

=back

=cut

__PACKAGE__->add_unique_constraint("unique", ["device_id", "port_id", "vlan"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7woV2iTCrqFE5Mlk33yDgw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
