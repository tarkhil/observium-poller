use utf8;
package Schema::Result::Application;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Application

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

=head1 TABLE: C<applications>

=cut

__PACKAGE__->table("applications");

=head1 ACCESSORS

=head2 app_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 app_type

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 app_instance

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 app_state

  data_type: 'varchar'
  default_value: 'UNKNOWN'
  is_nullable: 0
  size: 32

=head2 app_status

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=cut

__PACKAGE__->add_columns(
  "app_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "app_type",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "app_instance",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "app_state",
  {
    data_type => "varchar",
    default_value => "UNKNOWN",
    is_nullable => 0,
    size => 32,
  },
  "app_status",
  { data_type => "varchar", is_nullable => 0, size => 8 },
);

=head1 PRIMARY KEY

=over 4

=item * L</app_id>

=back

=cut

__PACKAGE__->set_primary_key("app_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<dev_type_inst>

=over 4

=item * L</device_id>

=item * L</app_type>

=item * L</app_instance>

=back

=cut

__PACKAGE__->add_unique_constraint("dev_type_inst", ["device_id", "app_type", "app_instance"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hdlJkfKtt5mMSvuznTYiRw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
