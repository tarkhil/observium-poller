use utf8;
package Schema::Result::Vminfo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Vminfo

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

=head1 TABLE: C<vminfo>

=cut

__PACKAGE__->table("vminfo");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 vm_type

  data_type: 'varchar'
  default_value: 'vmware'
  is_nullable: 0
  size: 16

=head2 vmwvmvmid

  data_type: 'integer'
  is_nullable: 0

=head2 vmwvmdisplayname

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 vmwvmguestos

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 vmwvmmemsize

  data_type: 'integer'
  is_nullable: 0

=head2 vmwvmcpus

  data_type: 'integer'
  is_nullable: 0

=head2 vmwvmstate

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 vmwvmuuid

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 vmwvmgueststate

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 vmwvmconfigfile

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "vm_type",
  {
    data_type => "varchar",
    default_value => "vmware",
    is_nullable => 0,
    size => 16,
  },
  "vmwvmvmid",
  { data_type => "integer", is_nullable => 0 },
  "vmwvmdisplayname",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "vmwvmguestos",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "vmwvmmemsize",
  { data_type => "integer", is_nullable => 0 },
  "vmwvmcpus",
  { data_type => "integer", is_nullable => 0 },
  "vmwvmstate",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "vmwvmuuid",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "vmwvmgueststate",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "vmwvmconfigfile",
  { data_type => "varchar", is_nullable => 1, size => 128 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:eO34cUH+Zl/yce7Y4l2yUw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
