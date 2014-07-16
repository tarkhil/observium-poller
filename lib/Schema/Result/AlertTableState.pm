use utf8;
package Schema::Result::AlertTableState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::AlertTableState

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

=head1 TABLE: C<`alert_table-state`>

=cut

__PACKAGE__->table(\"`alert_table-state`");

=head1 ACCESSORS

=head2 alert_table_id

  data_type: 'integer'
  is_nullable: 0

=head2 last_checked

  data_type: 'integer'
  is_nullable: 0

=head2 last_changed

  data_type: 'integer'
  is_nullable: 0

=head2 last_message

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 alert_status

  data_type: 'tinyint'
  default_value: -1
  is_nullable: 0

=head2 last_alerted

  data_type: 'integer'
  is_nullable: 0

=head2 state

  data_type: 'varchar'
  is_nullable: 0
  size: 512

=head2 count

  data_type: 'integer'
  is_nullable: 0

=head2 state_entry

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "alert_table_id",
  { data_type => "integer", is_nullable => 0 },
  "last_checked",
  { data_type => "integer", is_nullable => 0 },
  "last_changed",
  { data_type => "integer", is_nullable => 0 },
  "last_message",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "alert_status",
  { data_type => "tinyint", default_value => -1, is_nullable => 0 },
  "last_alerted",
  { data_type => "integer", is_nullable => 0 },
  "state",
  { data_type => "varchar", is_nullable => 0, size => 512 },
  "count",
  { data_type => "integer", is_nullable => 0 },
  "state_entry",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</alert_table_id>

=back

=cut

__PACKAGE__->set_primary_key("alert_table_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jtxHL1bYK2nGEaj8q2tV2Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
