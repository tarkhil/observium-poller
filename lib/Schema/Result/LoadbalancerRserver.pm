use utf8;
package Schema::Result::LoadbalancerRserver;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::LoadbalancerRserver

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

=head1 TABLE: C<loadbalancer_rservers>

=cut

__PACKAGE__->table("loadbalancer_rservers");

=head1 ACCESSORS

=head2 rserver_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 farm_id

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 statedescr

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "rserver_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "farm_id",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "statedescr",
  { data_type => "varchar", is_nullable => 0, size => 64 },
);

=head1 PRIMARY KEY

=over 4

=item * L</rserver_id>

=back

=cut

__PACKAGE__->set_primary_key("rserver_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7qk1jJgtgX0J3nlUqqo9VA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
