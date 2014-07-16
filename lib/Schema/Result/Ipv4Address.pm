use utf8;
package Schema::Result::Ipv4Address;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Ipv4Address

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

=head1 TABLE: C<ipv4_addresses>

=cut

__PACKAGE__->table("ipv4_addresses");

=head1 ACCESSORS

=head2 ipv4_address_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 ipv4_address

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ipv4_prefixlen

  data_type: 'integer'
  is_nullable: 0

=head2 ipv4_network_id

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "ipv4_address_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "ipv4_address",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ipv4_prefixlen",
  { data_type => "integer", is_nullable => 0 },
  "ipv4_network_id",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "port_id",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</ipv4_address_id>

=back

=cut

__PACKAGE__->set_primary_key("ipv4_address_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:j2xXVp07xbH56Xi0q1zmGA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
