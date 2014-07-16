use utf8;
package Schema::Result::Link;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Link

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

=head1 TABLE: C<links>

=cut

__PACKAGE__->table("links");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 local_port_id

  data_type: 'integer'
  is_nullable: 1

=head2 remote_port_id

  data_type: 'integer'
  is_nullable: 1

=head2 active

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 protocol

  data_type: 'varchar'
  is_nullable: 1
  size: 11

=head2 remote_hostname

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 remote_port

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 remote_platform

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 remote_version

  data_type: 'varchar'
  is_nullable: 0
  size: 256

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "local_port_id",
  { data_type => "integer", is_nullable => 1 },
  "remote_port_id",
  { data_type => "integer", is_nullable => 1 },
  "active",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "protocol",
  { data_type => "varchar", is_nullable => 1, size => 11 },
  "remote_hostname",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "remote_port",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "remote_platform",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "remote_version",
  { data_type => "varchar", is_nullable => 0, size => 256 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fI6N4k/BkXdHktOH2NAzdA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
