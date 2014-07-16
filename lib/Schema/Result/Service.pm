use utf8;
package Schema::Result::Service;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Service

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

=head1 TABLE: C<services>

=cut

__PACKAGE__->table("services");

=head1 ACCESSORS

=head2 service_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 service_ip

  data_type: 'text'
  is_nullable: 0

=head2 service_type

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 service_desc

  data_type: 'text'
  is_nullable: 0

=head2 service_param

  data_type: 'text'
  is_nullable: 0

=head2 service_ignore

  data_type: 'tinyint'
  is_nullable: 0

=head2 service_status

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 service_checked

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 service_changed

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 service_message

  data_type: 'text'
  is_nullable: 0

=head2 service_disabled

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "service_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "service_ip",
  { data_type => "text", is_nullable => 0 },
  "service_type",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "service_desc",
  { data_type => "text", is_nullable => 0 },
  "service_param",
  { data_type => "text", is_nullable => 0 },
  "service_ignore",
  { data_type => "tinyint", is_nullable => 0 },
  "service_status",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "service_checked",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "service_changed",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "service_message",
  { data_type => "text", is_nullable => 0 },
  "service_disabled",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</service_id>

=back

=cut

__PACKAGE__->set_primary_key("service_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4VzXFbOqyTp7WrGf8gQkuQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
