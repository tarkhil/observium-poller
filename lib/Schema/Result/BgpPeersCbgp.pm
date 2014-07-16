use utf8;
package Schema::Result::BgpPeersCbgp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::BgpPeersCbgp

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

=head1 TABLE: C<bgpPeers_cbgp>

=cut

__PACKAGE__->table("bgpPeers_cbgp");

=head1 ACCESSORS

=head2 cbgp_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 bgppeerremoteaddr

  data_type: 'varchar'
  is_nullable: 0
  size: 39

=head2 bgppeerindex

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 afi

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 safi

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=cut

__PACKAGE__->add_columns(
  "cbgp_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "bgppeerremoteaddr",
  { data_type => "varchar", is_nullable => 0, size => 39 },
  "bgppeerindex",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "afi",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "safi",
  { data_type => "varchar", is_nullable => 0, size => 16 },
);

=head1 PRIMARY KEY

=over 4

=item * L</cbgp_id>

=back

=cut

__PACKAGE__->set_primary_key("cbgp_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<unique_index>

=over 4

=item * L</device_id>

=item * L</bgppeerremoteaddr>

=item * L</afi>

=item * L</safi>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "unique_index",
  ["device_id", "bgppeerremoteaddr", "afi", "safi"],
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4Of0082MNuRag5dt2Si5jA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
