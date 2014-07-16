use utf8;
package Schema::Result::AlertTest;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::AlertTest

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

=head1 TABLE: C<alert_tests>

=cut

__PACKAGE__->table("alert_tests");

=head1 ACCESSORS

=head2 alert_test_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 entity_type

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 alert_name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 alert_message

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 conditions

  data_type: 'text'
  is_nullable: 1

=head2 and

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 severity

  data_type: 'varchar'
  is_nullable: 1
  size: 256

=head2 delay

  data_type: 'integer'
  default_value: 0
  is_nullable: 1

=head2 alerter

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 enable

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 ignore_until

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "alert_test_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "entity_type",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "alert_name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "alert_message",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "conditions",
  { data_type => "text", is_nullable => 1 },
  "and",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "severity",
  { data_type => "varchar", is_nullable => 1, size => 256 },
  "delay",
  { data_type => "integer", default_value => 0, is_nullable => 1 },
  "alerter",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "enable",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "ignore_until",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</alert_test_id>

=back

=cut

__PACKAGE__->set_primary_key("alert_test_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<alert_name_2>

=over 4

=item * L</alert_name>

=back

=cut

__PACKAGE__->add_unique_constraint("alert_name_2", ["alert_name"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3o3Ty/CdLICqiQkZZ7zB1A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
