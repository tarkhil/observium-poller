use utf8;
package Schema::Result::MacAccountingState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::MacAccountingState

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

=head1 TABLE: C<`mac_accounting-state`>

=cut

__PACKAGE__->table(\"`mac_accounting-state`");

=head1 ACCESSORS

=head2 ma_id

  data_type: 'integer'
  is_nullable: 0

=head2 bytes_input

  data_type: 'bigint'
  is_nullable: 1

=head2 bytes_input_delta

  data_type: 'bigint'
  is_nullable: 1

=head2 bytes_input_rate

  data_type: 'integer'
  is_nullable: 1

=head2 bytes_output

  data_type: 'bigint'
  is_nullable: 1

=head2 bytes_output_delta

  data_type: 'bigint'
  is_nullable: 1

=head2 bytes_output_rate

  data_type: 'integer'
  is_nullable: 1

=head2 pkts_input

  data_type: 'bigint'
  is_nullable: 1

=head2 pkts_input_delta

  data_type: 'bigint'
  is_nullable: 1

=head2 pkts_input_rate

  data_type: 'integer'
  is_nullable: 1

=head2 pkts_output

  data_type: 'bigint'
  is_nullable: 1

=head2 pkts_output_delta

  data_type: 'bigint'
  is_nullable: 1

=head2 pkts_output_rate

  data_type: 'integer'
  is_nullable: 1

=head2 poll_time

  data_type: 'integer'
  is_nullable: 1

=head2 poll_period

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "ma_id",
  { data_type => "integer", is_nullable => 0 },
  "bytes_input",
  { data_type => "bigint", is_nullable => 1 },
  "bytes_input_delta",
  { data_type => "bigint", is_nullable => 1 },
  "bytes_input_rate",
  { data_type => "integer", is_nullable => 1 },
  "bytes_output",
  { data_type => "bigint", is_nullable => 1 },
  "bytes_output_delta",
  { data_type => "bigint", is_nullable => 1 },
  "bytes_output_rate",
  { data_type => "integer", is_nullable => 1 },
  "pkts_input",
  { data_type => "bigint", is_nullable => 1 },
  "pkts_input_delta",
  { data_type => "bigint", is_nullable => 1 },
  "pkts_input_rate",
  { data_type => "integer", is_nullable => 1 },
  "pkts_output",
  { data_type => "bigint", is_nullable => 1 },
  "pkts_output_delta",
  { data_type => "bigint", is_nullable => 1 },
  "pkts_output_rate",
  { data_type => "integer", is_nullable => 1 },
  "poll_time",
  { data_type => "integer", is_nullable => 1 },
  "poll_period",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</ma_id>

=back

=cut

__PACKAGE__->set_primary_key("ma_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zEEE6sy3F9/2J9x+MpELtA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
