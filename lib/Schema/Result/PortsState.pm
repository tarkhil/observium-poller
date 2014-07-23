use utf8;
package Schema::Result::PortsState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::PortsState

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

=head1 TABLE: C<`ports-state`>

=cut

__PACKAGE__->table(\"`ports-state`");

=head1 ACCESSORS

=head2 port_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifinucastpkts

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifinucastpkts_delta

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifinucastpkts_rate

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifoutucastpkts

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifoutucastpkts_delta

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifoutucastpkts_rate

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifinerrors

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifinerrors_delta

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifinerrors_rate

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifouterrors

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifouterrors_delta

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifouterrors_rate

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifoctets_rate

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifucastpkts_rate

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 iferrors_rate

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifinoctets

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifinoctets_delta

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifinoctets_rate

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifoutoctets

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifoutoctets_delta

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifoutoctets_rate

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifinoctets_perc

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ifoutoctets_perc

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 poll_time

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 poll_period

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "port_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifinucastpkts",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifinucastpkts_delta",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifinucastpkts_rate",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifoutucastpkts",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifoutucastpkts_delta",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifoutucastpkts_rate",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifinerrors",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifinerrors_delta",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifinerrors_rate",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifouterrors",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifouterrors_delta",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifouterrors_rate",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifoctets_rate",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifucastpkts_rate",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "iferrors_rate",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifinoctets",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifinoctets_delta",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifinoctets_rate",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifoutoctets",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifoutoctets_delta",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifoutoctets_rate",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifinoctets_perc",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 0 },
  "ifoutoctets_perc",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 0 },
  "poll_time",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "poll_period",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</port_id>

=back

=cut

__PACKAGE__->set_primary_key("port_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:iKsgNKSZ2qt3k5veWYPzDw
__PACKAGE__->belongs_to( port => 'Schema::Result::Port', 
			 'port_id' );

1;
