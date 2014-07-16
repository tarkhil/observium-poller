use utf8;
package Schema::Result::AlertTable;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::AlertTable

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

=head1 TABLE: C<alert_table>

=cut

__PACKAGE__->table("alert_table");

=head1 ACCESSORS

=head2 alert_table_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 alert_test_id

  data_type: 'integer'
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 entity_type

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 entity_id

  data_type: 'integer'
  is_nullable: 0

=head2 alert_assocs

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 delay

  data_type: 'integer'
  is_nullable: 0

=head2 ignore_until

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "alert_table_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "alert_test_id",
  { data_type => "integer", is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "entity_type",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "entity_id",
  { data_type => "integer", is_nullable => 0 },
  "alert_assocs",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "delay",
  { data_type => "integer", is_nullable => 0 },
  "ignore_until",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</alert_table_id>

=back

=cut

__PACKAGE__->set_primary_key("alert_table_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<alert_id_2>

=over 4

=item * L</alert_test_id>

=item * L</entity_type>

=item * L</entity_id>

=back

=cut

__PACKAGE__->add_unique_constraint("alert_id_2", ["alert_test_id", "entity_type", "entity_id"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1EHYau3gv2foUYlrN8260w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
