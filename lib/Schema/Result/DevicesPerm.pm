use utf8;
package Schema::Result::DevicesPerm;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::DevicesPerm

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

=head1 TABLE: C<devices_perms>

=cut

__PACKAGE__->table("devices_perms");

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 access_level

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "integer", is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "access_level",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:p+F8rHg4oyZh92VVQ+ADQQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
