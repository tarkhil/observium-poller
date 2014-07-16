use utf8;
package Schema::Result::BillPortOutData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::BillPortOutData

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

=head1 TABLE: C<bill_port_out_data>

=cut

__PACKAGE__->table("bill_port_out_data");

=head1 ACCESSORS

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=head2 timestamp

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 counter

  data_type: 'bigint'
  is_nullable: 0

=head2 delta

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "port_id",
  { data_type => "integer", is_nullable => 0 },
  "timestamp",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "counter",
  { data_type => "bigint", is_nullable => 0 },
  "delta",
  { data_type => "bigint", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WWFE0rwydVEdhN4r3psZPA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
