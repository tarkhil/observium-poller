use utf8;
package Schema::Result::HrDevice;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::HrDevice

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

=head1 TABLE: C<hrDevice>

=cut

__PACKAGE__->table("hrDevice");

=head1 ACCESSORS

=head2 hrdevice_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 hrdeviceindex

  data_type: 'integer'
  is_nullable: 0

=head2 hrdevicedescr

  data_type: 'text'
  is_nullable: 0

=head2 hrdevicetype

  data_type: 'text'
  is_nullable: 0

=head2 hrdeviceerrors

  data_type: 'integer'
  is_nullable: 0

=head2 hrdevicestatus

  data_type: 'text'
  is_nullable: 0

=head2 hrprocessorload

  data_type: 'tinyint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "hrdevice_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "hrdeviceindex",
  { data_type => "integer", is_nullable => 0 },
  "hrdevicedescr",
  { data_type => "text", is_nullable => 0 },
  "hrdevicetype",
  { data_type => "text", is_nullable => 0 },
  "hrdeviceerrors",
  { data_type => "integer", is_nullable => 0 },
  "hrdevicestatus",
  { data_type => "text", is_nullable => 0 },
  "hrprocessorload",
  { data_type => "tinyint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</hrdevice_id>

=back

=cut

__PACKAGE__->set_primary_key("hrdevice_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:l3MsA/zsMOmeCl+SL9Tqgw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
