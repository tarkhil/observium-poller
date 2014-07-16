use utf8;
package Schema::Result::BgpPeersState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::BgpPeersState

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

=head1 TABLE: C<`bgpPeers-state`>

=cut

__PACKAGE__->table(\"`bgpPeers-state`");

=head1 ACCESSORS

=head2 bgppeer_id

  data_type: 'integer'
  is_nullable: 0

=head2 bgppeerinupdates

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeeroutupdates

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeerintotalmessages

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeerouttotalmessages

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeerfsmestablishedtime

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeerinupdateelapsedtime

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeerinupdates_delta

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeerinupdates_rate

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeeroutupdates_delta

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeeroutupdates_rate

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeerintotalmessages_delta

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeerintotalmessages_rate

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeerouttotalmessages_delta

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeerouttotalmessages_rate

  data_type: 'integer'
  is_nullable: 1

=head2 bgppeer_polled

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "bgppeer_id",
  { data_type => "integer", is_nullable => 0 },
  "bgppeerinupdates",
  { data_type => "integer", is_nullable => 1 },
  "bgppeeroutupdates",
  { data_type => "integer", is_nullable => 1 },
  "bgppeerintotalmessages",
  { data_type => "integer", is_nullable => 1 },
  "bgppeerouttotalmessages",
  { data_type => "integer", is_nullable => 1 },
  "bgppeerfsmestablishedtime",
  { data_type => "integer", is_nullable => 1 },
  "bgppeerinupdateelapsedtime",
  { data_type => "integer", is_nullable => 1 },
  "bgppeerinupdates_delta",
  { data_type => "integer", is_nullable => 1 },
  "bgppeerinupdates_rate",
  { data_type => "integer", is_nullable => 1 },
  "bgppeeroutupdates_delta",
  { data_type => "integer", is_nullable => 1 },
  "bgppeeroutupdates_rate",
  { data_type => "integer", is_nullable => 1 },
  "bgppeerintotalmessages_delta",
  { data_type => "integer", is_nullable => 1 },
  "bgppeerintotalmessages_rate",
  { data_type => "integer", is_nullable => 1 },
  "bgppeerouttotalmessages_delta",
  { data_type => "integer", is_nullable => 1 },
  "bgppeerouttotalmessages_rate",
  { data_type => "integer", is_nullable => 1 },
  "bgppeer_polled",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</bgppeer_id>

=back

=cut

__PACKAGE__->set_primary_key("bgppeer_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lRPzecrcITWRju7nYo2w0w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
