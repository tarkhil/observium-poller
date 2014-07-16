use utf8;
package Schema::Result::BgpPeer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::BgpPeer

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

=head1 TABLE: C<bgpPeers>

=cut

__PACKAGE__->table("bgpPeers");

=head1 ACCESSORS

=head2 bgppeer_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 astext

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 bgppeeridentifier

  data_type: 'varchar'
  is_nullable: 0
  size: 39

=head2 bgppeerremoteas

  data_type: 'integer'
  is_nullable: 0

=head2 bgppeerstate

  data_type: 'text'
  is_nullable: 0

=head2 bgppeeradminstatus

  data_type: 'text'
  is_nullable: 0

=head2 bgppeerlocaladdr

  data_type: 'varchar'
  is_nullable: 0
  size: 39

=head2 bgppeerremoteaddr

  data_type: 'varchar'
  is_nullable: 0
  size: 39

=cut

__PACKAGE__->add_columns(
  "bgppeer_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "astext",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "bgppeeridentifier",
  { data_type => "varchar", is_nullable => 0, size => 39 },
  "bgppeerremoteas",
  { data_type => "integer", is_nullable => 0 },
  "bgppeerstate",
  { data_type => "text", is_nullable => 0 },
  "bgppeeradminstatus",
  { data_type => "text", is_nullable => 0 },
  "bgppeerlocaladdr",
  { data_type => "varchar", is_nullable => 0, size => 39 },
  "bgppeerremoteaddr",
  { data_type => "varchar", is_nullable => 0, size => 39 },
);

=head1 PRIMARY KEY

=over 4

=item * L</bgppeer_id>

=back

=cut

__PACKAGE__->set_primary_key("bgppeer_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:A3G6cdnkR33ZWbj7S25/uA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
