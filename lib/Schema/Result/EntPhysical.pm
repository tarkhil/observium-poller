use utf8;
package Schema::Result::EntPhysical;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::EntPhysical

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

=head1 TABLE: C<entPhysical>

=cut

__PACKAGE__->table("entPhysical");

=head1 ACCESSORS

=head2 entphysical_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 entphysicalindex

  data_type: 'integer'
  is_nullable: 0

=head2 entphysicaldescr

  data_type: 'text'
  is_nullable: 0

=head2 entphysicalclass

  data_type: 'text'
  is_nullable: 0

=head2 entphysicalname

  data_type: 'text'
  is_nullable: 0

=head2 entphysicalhardwarerev

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 entphysicalfirmwarerev

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 entphysicalsoftwarerev

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 entphysicalalias

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 entphysicalassetid

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 entphysicalisfru

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 entphysicalmodelname

  data_type: 'text'
  is_nullable: 0

=head2 entphysicalvendortype

  data_type: 'text'
  is_nullable: 1

=head2 entphysicalserialnum

  data_type: 'text'
  is_nullable: 0

=head2 entphysicalcontainedin

  data_type: 'integer'
  is_nullable: 0

=head2 entphysicalparentrelpos

  data_type: 'integer'
  is_nullable: 0

=head2 entphysicalmfgname

  data_type: 'text'
  is_nullable: 0

=head2 ifindex

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "entphysical_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "entphysicalindex",
  { data_type => "integer", is_nullable => 0 },
  "entphysicaldescr",
  { data_type => "text", is_nullable => 0 },
  "entphysicalclass",
  { data_type => "text", is_nullable => 0 },
  "entphysicalname",
  { data_type => "text", is_nullable => 0 },
  "entphysicalhardwarerev",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "entphysicalfirmwarerev",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "entphysicalsoftwarerev",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "entphysicalalias",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "entphysicalassetid",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "entphysicalisfru",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "entphysicalmodelname",
  { data_type => "text", is_nullable => 0 },
  "entphysicalvendortype",
  { data_type => "text", is_nullable => 1 },
  "entphysicalserialnum",
  { data_type => "text", is_nullable => 0 },
  "entphysicalcontainedin",
  { data_type => "integer", is_nullable => 0 },
  "entphysicalparentrelpos",
  { data_type => "integer", is_nullable => 0 },
  "entphysicalmfgname",
  { data_type => "text", is_nullable => 0 },
  "ifindex",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</entphysical_id>

=back

=cut

__PACKAGE__->set_primary_key("entphysical_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OS4nYKeHa2SkxOSlINZ5iA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
