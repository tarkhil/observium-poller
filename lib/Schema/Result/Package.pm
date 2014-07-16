use utf8;
package Schema::Result::Package;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Package

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

=head1 TABLE: C<packages>

=cut

__PACKAGE__->table("packages");

=head1 ACCESSORS

=head2 pkg_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 manager

  data_type: 'varchar'
  default_value: 1
  is_nullable: 0
  size: 16

=head2 status

  data_type: 'tinyint'
  is_nullable: 0

=head2 version

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 build

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 arch

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 size

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "pkg_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "manager",
  { data_type => "varchar", default_value => 1, is_nullable => 0, size => 16 },
  "status",
  { data_type => "tinyint", is_nullable => 0 },
  "version",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "build",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "arch",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "size",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</pkg_id>

=back

=cut

__PACKAGE__->set_primary_key("pkg_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<unique_key>

=over 4

=item * L</device_id>

=item * L</name>

=item * L</manager>

=item * L</arch>

=item * L</version>

=item * L</build>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "unique_key",
  ["device_id", "name", "manager", "arch", "version", "build"],
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kpzmFrdBsEo/A2OfUXMz5Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
