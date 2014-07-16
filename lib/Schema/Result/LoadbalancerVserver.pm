use utf8;
package Schema::Result::LoadbalancerVserver;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::LoadbalancerVserver

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

=head1 TABLE: C<loadbalancer_vservers>

=cut

__PACKAGE__->table("loadbalancer_vservers");

=head1 ACCESSORS

=head2 classmap_id

  data_type: 'integer'
  is_nullable: 0

=head2 classmap

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 serverstate

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "classmap_id",
  { data_type => "integer", is_nullable => 0 },
  "classmap",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "serverstate",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:AIldr7jGjyKcEZNdQekX/g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
