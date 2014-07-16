use utf8;
package Schema::Result::MacAccounting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::MacAccounting

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

=head1 TABLE: C<mac_accounting>

=cut

__PACKAGE__->table("mac_accounting");

=head1 ACCESSORS

=head2 ma_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=head2 vlan_id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 mac

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "ma_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "port_id",
  { data_type => "integer", is_nullable => 0 },
  "vlan_id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "mac",
  { data_type => "varchar", is_nullable => 0, size => 32 },
);

=head1 PRIMARY KEY

=over 4

=item * L</ma_id>

=back

=cut

__PACKAGE__->set_primary_key("ma_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<port_vlan_mac>

=over 4

=item * L</port_id>

=item * L</vlan_id>

=item * L</mac>

=back

=cut

__PACKAGE__->add_unique_constraint("port_vlan_mac", ["port_id", "vlan_id", "mac"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1Zg5WmmuWyrrfvnq4mluEg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
