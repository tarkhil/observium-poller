use utf8;
package Schema::Result::IpsecTunnel;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::IpsecTunnel

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

=head1 TABLE: C<ipsec_tunnels>

=cut

__PACKAGE__->table("ipsec_tunnels");

=head1 ACCESSORS

=head2 tunnel_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 peer_port

  data_type: 'integer'
  is_nullable: 0

=head2 peer_addr

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 local_addr

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 local_port

  data_type: 'integer'
  is_nullable: 0

=head2 tunnel_name

  data_type: 'varchar'
  is_nullable: 0
  size: 96

=head2 tunnel_status

  data_type: 'varchar'
  is_nullable: 0
  size: 11

=cut

__PACKAGE__->add_columns(
  "tunnel_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "peer_port",
  { data_type => "integer", is_nullable => 0 },
  "peer_addr",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "local_addr",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "local_port",
  { data_type => "integer", is_nullable => 0 },
  "tunnel_name",
  { data_type => "varchar", is_nullable => 0, size => 96 },
  "tunnel_status",
  { data_type => "varchar", is_nullable => 0, size => 11 },
);

=head1 PRIMARY KEY

=over 4

=item * L</tunnel_id>

=back

=cut

__PACKAGE__->set_primary_key("tunnel_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<unique_index>

=over 4

=item * L</device_id>

=item * L</peer_addr>

=back

=cut

__PACKAGE__->add_unique_constraint("unique_index", ["device_id", "peer_addr"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FqfacyRWoUO+43bgdHIgzw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
