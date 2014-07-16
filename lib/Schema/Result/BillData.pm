use utf8;
package Schema::Result::BillData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::BillData

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

=head1 TABLE: C<bill_data>

=cut

__PACKAGE__->table("bill_data");

=head1 ACCESSORS

=head2 bill_id

  data_type: 'integer'
  is_nullable: 0

=head2 timestamp

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 period

  data_type: 'integer'
  is_nullable: 0

=head2 delta

  data_type: 'bigint'
  is_nullable: 0

=head2 in_delta

  data_type: 'bigint'
  is_nullable: 0

=head2 out_delta

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "bill_id",
  { data_type => "integer", is_nullable => 0 },
  "timestamp",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "period",
  { data_type => "integer", is_nullable => 0 },
  "delta",
  { data_type => "bigint", is_nullable => 0 },
  "in_delta",
  { data_type => "bigint", is_nullable => 0 },
  "out_delta",
  { data_type => "bigint", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jgF0br9MhyL6/eNSEQxxOg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
