use utf8;
package Schema::Result::NetscalerServicesVserver;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::NetscalerServicesVserver

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

=head1 TABLE: C<netscaler_services_vservers>

=cut

__PACKAGE__->table("netscaler_services_vservers");

=head1 ACCESSORS

=head2 sv_id

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

=head2 svc_name

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 service_weight

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "sv_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "vsvr_name",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "svc_name",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "service_weight",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</sv_id>

=back

=cut

__PACKAGE__->set_primary_key("sv_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<index>

=over 4

=item * L</device_id>

=item * L</vsvr_name>

=item * L</svc_name>

=back

=cut

__PACKAGE__->add_unique_constraint("index", ["device_id", "vsvr_name", "svc_name"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3iB5GsbPqXDBSH9ZauPwbA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
