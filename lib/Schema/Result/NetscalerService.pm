use utf8;
package Schema::Result::NetscalerService;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::NetscalerService

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

=head1 TABLE: C<netscaler_services>

=cut

__PACKAGE__->table("netscaler_services");

=head1 ACCESSORS

=head2 svc_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 svc_name

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 svc_fullname

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 svc_label

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 svc_ip

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 svc_port

  data_type: 'integer'
  is_nullable: 0

=head2 svc_type

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 svc_state

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 svc_clients

  data_type: 'integer'
  is_nullable: 0

=head2 svc_server

  data_type: 'integer'
  is_nullable: 0

=head2 svc_req_rate

  data_type: 'integer'
  is_nullable: 0

=head2 svc_bps_in

  data_type: 'integer'
  is_nullable: 0

=head2 svc_bps_out

  data_type: 'integer'
  is_nullable: 0

=head2 svc_ignore

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 svc_ignore_until

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "svc_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "svc_name",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "svc_fullname",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "svc_label",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "svc_ip",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "svc_port",
  { data_type => "integer", is_nullable => 0 },
  "svc_type",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "svc_state",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "svc_clients",
  { data_type => "integer", is_nullable => 0 },
  "svc_server",
  { data_type => "integer", is_nullable => 0 },
  "svc_req_rate",
  { data_type => "integer", is_nullable => 0 },
  "svc_bps_in",
  { data_type => "integer", is_nullable => 0 },
  "svc_bps_out",
  { data_type => "integer", is_nullable => 0 },
  "svc_ignore",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "svc_ignore_until",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</svc_id>

=back

=cut

__PACKAGE__->set_primary_key("svc_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BV1L7i2MZ5rztkrVSzarMw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
