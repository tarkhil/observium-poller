use utf8;
package Schema::Result::MempoolsState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::MempoolsState

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

=head1 TABLE: C<`mempools-state`>

=cut

__PACKAGE__->table(\"`mempools-state`");

=head1 ACCESSORS

=head2 mempool_id

  data_type: 'integer'
  is_nullable: 0

=head2 mempool_polled

  data_type: 'integer'
  is_nullable: 0

=head2 mempool_perc

  data_type: 'integer'
  is_nullable: 0

=head2 mempool_used

  data_type: 'bigint'
  is_nullable: 0

=head2 mempool_free

  data_type: 'bigint'
  is_nullable: 0

=head2 mempool_total

  data_type: 'bigint'
  is_nullable: 0

=head2 mempool_largestfree

  data_type: 'bigint'
  is_nullable: 1

=head2 mempool_lowestfree

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "mempool_id",
  { data_type => "integer", is_nullable => 0 },
  "mempool_polled",
  { data_type => "integer", is_nullable => 0 },
  "mempool_perc",
  { data_type => "integer", is_nullable => 0 },
  "mempool_used",
  { data_type => "bigint", is_nullable => 0 },
  "mempool_free",
  { data_type => "bigint", is_nullable => 0 },
  "mempool_total",
  { data_type => "bigint", is_nullable => 0 },
  "mempool_largestfree",
  { data_type => "bigint", is_nullable => 1 },
  "mempool_lowestfree",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</mempool_id>

=back

=cut

__PACKAGE__->set_primary_key("mempool_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:G/lWM7RmJkHz2q88BTG8qA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
