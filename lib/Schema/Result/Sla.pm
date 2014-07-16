use utf8;
package Schema::Result::Sla;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Sla

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

=head1 TABLE: C<slas>

=cut

__PACKAGE__->table("slas");

=head1 ACCESSORS

=head2 sla_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 sla_nr

  data_type: 'integer'
  is_nullable: 0

=head2 owner

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 tag

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 rtt_type

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 status

  data_type: 'tinyint'
  is_nullable: 0

=head2 deleted

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "sla_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "sla_nr",
  { data_type => "integer", is_nullable => 0 },
  "owner",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "tag",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "rtt_type",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "status",
  { data_type => "tinyint", is_nullable => 0 },
  "deleted",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</sla_id>

=back

=cut

__PACKAGE__->set_primary_key("sla_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<unique_key>

=over 4

=item * L</device_id>

=item * L</sla_nr>

=back

=cut

__PACKAGE__->add_unique_constraint("unique_key", ["device_id", "sla_nr"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kAdljqlvuw1dNKNz1jzWDA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
