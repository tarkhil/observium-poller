use utf8;
package Schema::Result::BgpPeersCbgpState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::BgpPeersCbgpState

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

=head1 TABLE: C<`bgpPeers_cbgp-state`>

=cut

__PACKAGE__->table(\"`bgpPeers_cbgp-state`");

=head1 ACCESSORS

=head2 cbgp_id

  data_type: 'integer'
  is_nullable: 0

=head2 acceptedprefixes

  data_type: 'integer'
  is_nullable: 1

=head2 deniedprefixes

  data_type: 'integer'
  is_nullable: 1

=head2 prefixadminlimit

  data_type: 'integer'
  is_nullable: 1

=head2 prefixthreshold

  data_type: 'integer'
  is_nullable: 1

=head2 prefixclearthreshold

  data_type: 'integer'
  is_nullable: 1

=head2 advertisedprefixes

  data_type: 'integer'
  is_nullable: 1

=head2 suppressedprefixes

  data_type: 'integer'
  is_nullable: 1

=head2 withdrawnprefixes

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "cbgp_id",
  { data_type => "integer", is_nullable => 0 },
  "acceptedprefixes",
  { data_type => "integer", is_nullable => 1 },
  "deniedprefixes",
  { data_type => "integer", is_nullable => 1 },
  "prefixadminlimit",
  { data_type => "integer", is_nullable => 1 },
  "prefixthreshold",
  { data_type => "integer", is_nullable => 1 },
  "prefixclearthreshold",
  { data_type => "integer", is_nullable => 1 },
  "advertisedprefixes",
  { data_type => "integer", is_nullable => 1 },
  "suppressedprefixes",
  { data_type => "integer", is_nullable => 1 },
  "withdrawnprefixes",
  { data_type => "integer", is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<unique_index>

=over 4

=item * L</cbgp_id>

=back

=cut

__PACKAGE__->add_unique_constraint("unique_index", ["cbgp_id"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:T+NLQAG7CM9fMmlr+RWPOg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
