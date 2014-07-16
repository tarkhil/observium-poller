use utf8;
package Schema::Result::NetscalerVserver;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::NetscalerVserver

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

=head1 TABLE: C<netscaler_vservers>

=cut

__PACKAGE__->table("netscaler_vservers");

=head1 ACCESSORS

=head2 vsvr_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 vsvr_name

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 vsvr_fullname

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 vsvr_label

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 vsvr_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 vsvr_ipv6

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 vsvr_port

  data_type: 'integer'
  is_nullable: 0

=head2 vsvr_type

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 vsvr_entitytype

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 vsvr_state

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 vsvr_clients

  data_type: 'integer'
  is_nullable: 0

=head2 vsvr_server

  data_type: 'integer'
  is_nullable: 0

=head2 vsvr_req_rate

  data_type: 'integer'
  is_nullable: 0

=head2 vsvr_bps_in

  data_type: 'integer'
  is_nullable: 0

=head2 vsvr_bps_out

  data_type: 'integer'
  is_nullable: 0

=head2 vsvr_ignore

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 vsvr_ignore_until

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "vsvr_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "vsvr_name",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "vsvr_fullname",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "vsvr_label",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "vsvr_ip",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "vsvr_ipv6",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "vsvr_port",
  { data_type => "integer", is_nullable => 0 },
  "vsvr_type",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "vsvr_entitytype",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "vsvr_state",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "vsvr_clients",
  { data_type => "integer", is_nullable => 0 },
  "vsvr_server",
  { data_type => "integer", is_nullable => 0 },
  "vsvr_req_rate",
  { data_type => "integer", is_nullable => 0 },
  "vsvr_bps_in",
  { data_type => "integer", is_nullable => 0 },
  "vsvr_bps_out",
  { data_type => "integer", is_nullable => 0 },
  "vsvr_ignore",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "vsvr_ignore_until",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</vsvr_id>

=back

=cut

__PACKAGE__->set_primary_key("vsvr_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+Gk2NddROdUlqwaG4kO+KA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
