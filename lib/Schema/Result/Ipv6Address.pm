use utf8;
package Schema::Result::Ipv6Address;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Ipv6Address

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

=head1 TABLE: C<ipv6_addresses>

=cut

__PACKAGE__->table("ipv6_addresses");

=head1 ACCESSORS

=head2 ipv6_address_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 ipv6_address

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 ipv6_compressed

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 ipv6_prefixlen

  data_type: 'integer'
  is_nullable: 0

=head2 ipv6_origin

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 ipv6_network_id

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "ipv6_address_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "ipv6_address",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "ipv6_compressed",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "ipv6_prefixlen",
  { data_type => "integer", is_nullable => 0 },
  "ipv6_origin",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "ipv6_network_id",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "port_id",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</ipv6_address_id>

=back

=cut

__PACKAGE__->set_primary_key("ipv6_address_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pQSEyvRHONHpzBH4QM0nTw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
