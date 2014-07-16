use utf8;
package Schema::Result::Vrf;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Vrf

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

=head1 TABLE: C<vrfs>

=cut

__PACKAGE__->table("vrfs");

=head1 ACCESSORS

=head2 vrf_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 vrf_oid

  data_type: 'varchar'
  is_nullable: 0
  size: 256

=head2 vrf_name

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 mplsvpnvrfroutedistinguisher

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 mplsvpnvrfdescription

  data_type: 'text'
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "vrf_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "vrf_oid",
  { data_type => "varchar", is_nullable => 0, size => 256 },
  "vrf_name",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "mplsvpnvrfroutedistinguisher",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "mplsvpnvrfdescription",
  { data_type => "text", is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</vrf_id>

=back

=cut

__PACKAGE__->set_primary_key("vrf_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VdCItzp8KtchKWuql5NTqA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
