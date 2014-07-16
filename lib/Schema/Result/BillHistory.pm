use utf8;
package Schema::Result::BillHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::BillHistory

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

=head1 TABLE: C<bill_history>

=cut

__PACKAGE__->table("bill_history");

=head1 ACCESSORS

=head2 bill_hist_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 bill_id

  data_type: 'integer'
  is_nullable: 0

=head2 updated

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 bill_datefrom

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 bill_dateto

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 bill_type

  data_type: 'text'
  is_nullable: 0

=head2 bill_allowed

  data_type: 'bigint'
  is_nullable: 0

=head2 bill_used

  data_type: 'bigint'
  is_nullable: 0

=head2 bill_overuse

  data_type: 'bigint'
  is_nullable: 0

=head2 bill_percent

  data_type: 'decimal'
  is_nullable: 0
  size: [10,2]

=head2 rate_95th_in

  data_type: 'bigint'
  is_nullable: 0

=head2 rate_95th_out

  data_type: 'bigint'
  is_nullable: 0

=head2 rate_95th

  data_type: 'bigint'
  is_nullable: 0

=head2 dir_95th

  data_type: 'varchar'
  is_nullable: 0
  size: 3

=head2 rate_average

  data_type: 'bigint'
  is_nullable: 0

=head2 rate_average_in

  data_type: 'bigint'
  is_nullable: 0

=head2 rate_average_out

  data_type: 'bigint'
  is_nullable: 0

=head2 traf_in

  data_type: 'bigint'
  is_nullable: 0

=head2 traf_out

  data_type: 'bigint'
  is_nullable: 0

=head2 traf_total

  data_type: 'bigint'
  is_nullable: 0

=head2 pdf

  data_type: 'longblob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "bill_hist_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "bill_id",
  { data_type => "integer", is_nullable => 0 },
  "updated",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "bill_datefrom",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "bill_dateto",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "bill_type",
  { data_type => "text", is_nullable => 0 },
  "bill_allowed",
  { data_type => "bigint", is_nullable => 0 },
  "bill_used",
  { data_type => "bigint", is_nullable => 0 },
  "bill_overuse",
  { data_type => "bigint", is_nullable => 0 },
  "bill_percent",
  { data_type => "decimal", is_nullable => 0, size => [10, 2] },
  "rate_95th_in",
  { data_type => "bigint", is_nullable => 0 },
  "rate_95th_out",
  { data_type => "bigint", is_nullable => 0 },
  "rate_95th",
  { data_type => "bigint", is_nullable => 0 },
  "dir_95th",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "rate_average",
  { data_type => "bigint", is_nullable => 0 },
  "rate_average_in",
  { data_type => "bigint", is_nullable => 0 },
  "rate_average_out",
  { data_type => "bigint", is_nullable => 0 },
  "traf_in",
  { data_type => "bigint", is_nullable => 0 },
  "traf_out",
  { data_type => "bigint", is_nullable => 0 },
  "traf_total",
  { data_type => "bigint", is_nullable => 0 },
  "pdf",
  { data_type => "longblob", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</bill_hist_id>

=back

=cut

__PACKAGE__->set_primary_key("bill_hist_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<unique_index>

=over 4

=item * L</bill_id>

=item * L</bill_datefrom>

=item * L</bill_dateto>

=back

=cut

__PACKAGE__->add_unique_constraint("unique_index", ["bill_id", "bill_datefrom", "bill_dateto"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bt07gmCqUXLfyFyAVO1Q/Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
