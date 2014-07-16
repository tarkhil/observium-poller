use utf8;
package Schema::Result::OspfInstance;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::OspfInstance

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

=head1 TABLE: C<ospf_instances>

=cut

__PACKAGE__->table("ospf_instances");

=head1 ACCESSORS

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 ospf_instance_id

  data_type: 'integer'
  is_nullable: 0

=head2 ospfrouterid

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfadminstat

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfversionnumber

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfareabdrrtrstatus

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfasbdrrtrstatus

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospfexternlsacount

  data_type: 'integer'
  is_nullable: 0

=head2 ospfexternlsacksumsum

  data_type: 'integer'
  is_nullable: 0

=head2 ospftossupport

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 ospforiginatenewlsas

  data_type: 'integer'
  is_nullable: 0

=head2 ospfrxnewlsas

  data_type: 'integer'
  is_nullable: 0

=head2 ospfextlsdblimit

  data_type: 'integer'
  is_nullable: 1

=head2 ospfmulticastextensions

  data_type: 'integer'
  is_nullable: 1

=head2 ospfexitoverflowinterval

  data_type: 'integer'
  is_nullable: 1

=head2 ospfdemandextensions

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=cut

__PACKAGE__->add_columns(
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "ospf_instance_id",
  { data_type => "integer", is_nullable => 0 },
  "ospfrouterid",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfadminstat",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfversionnumber",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfareabdrrtrstatus",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfasbdrrtrstatus",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospfexternlsacount",
  { data_type => "integer", is_nullable => 0 },
  "ospfexternlsacksumsum",
  { data_type => "integer", is_nullable => 0 },
  "ospftossupport",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "ospforiginatenewlsas",
  { data_type => "integer", is_nullable => 0 },
  "ospfrxnewlsas",
  { data_type => "integer", is_nullable => 0 },
  "ospfextlsdblimit",
  { data_type => "integer", is_nullable => 1 },
  "ospfmulticastextensions",
  { data_type => "integer", is_nullable => 1 },
  "ospfexitoverflowinterval",
  { data_type => "integer", is_nullable => 1 },
  "ospfdemandextensions",
  { data_type => "varchar", is_nullable => 1, size => 32 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<device_id>

=over 4

=item * L</device_id>

=item * L</ospf_instance_id>

=back

=cut

__PACKAGE__->add_unique_constraint("device_id", ["device_id", "ospf_instance_id"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DOUemvLZKyMEIQIXz4tNTQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
