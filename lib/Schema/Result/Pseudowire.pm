use utf8;
package Schema::Result::Pseudowire;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Pseudowire

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

=head1 TABLE: C<pseudowires>

=cut

__PACKAGE__->table("pseudowires");

=head1 ACCESSORS

=head2 pseudowire_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=head2 peer_device_id

  data_type: 'integer'
  is_nullable: 0

=head2 peer_ldp_id

  data_type: 'integer'
  is_nullable: 0

=head2 cpwvcid

  data_type: 'integer'
  is_nullable: 0

=head2 cpwoid

  data_type: 'integer'
  is_nullable: 0

=head2 pw_type

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 pw_psntype

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 pw_local_mtu

  data_type: 'integer'
  is_nullable: 0

=head2 pw_peer_mtu

  data_type: 'integer'
  is_nullable: 0

=head2 pw_descr

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=cut

__PACKAGE__->add_columns(
  "pseudowire_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "port_id",
  { data_type => "integer", is_nullable => 0 },
  "peer_device_id",
  { data_type => "integer", is_nullable => 0 },
  "peer_ldp_id",
  { data_type => "integer", is_nullable => 0 },
  "cpwvcid",
  { data_type => "integer", is_nullable => 0 },
  "cpwoid",
  { data_type => "integer", is_nullable => 0 },
  "pw_type",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "pw_psntype",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "pw_local_mtu",
  { data_type => "integer", is_nullable => 0 },
  "pw_peer_mtu",
  { data_type => "integer", is_nullable => 0 },
  "pw_descr",
  { data_type => "varchar", is_nullable => 0, size => 128 },
);

=head1 PRIMARY KEY

=over 4

=item * L</pseudowire_id>

=back

=cut

__PACKAGE__->set_primary_key("pseudowire_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:C2Xxd0C/uqDI8MdW5cv87g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
