use utf8;
package Schema::Result::PortsAdsl;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::PortsAdsl

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

=head1 TABLE: C<ports_adsl>

=cut

__PACKAGE__->table("ports_adsl");

=head1 ACCESSORS

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=head2 port_adsl_updated

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 adsllinecoding

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 adsllinetype

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 adslatucinvvendorid

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 adslatucinvversionnumber

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 adslatuccurrsnrmgn

  data_type: 'decimal'
  is_nullable: 0
  size: [5,1]

=head2 adslatuccurratn

  data_type: 'decimal'
  is_nullable: 0
  size: [5,1]

=head2 adslatuccurroutputpwr

  data_type: 'decimal'
  is_nullable: 0
  size: [5,1]

=head2 adslatuccurrattainablerate

  data_type: 'integer'
  is_nullable: 0

=head2 adslatucchancurrtxrate

  data_type: 'integer'
  is_nullable: 0

=head2 adslaturinvserialnumber

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 adslaturinvvendorid

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 adslaturinvversionnumber

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=head2 adslaturchancurrtxrate

  data_type: 'integer'
  is_nullable: 0

=head2 adslaturcurrsnrmgn

  data_type: 'decimal'
  is_nullable: 0
  size: [5,1]

=head2 adslaturcurratn

  data_type: 'decimal'
  is_nullable: 0
  size: [5,1]

=head2 adslaturcurroutputpwr

  data_type: 'decimal'
  is_nullable: 0
  size: [5,1]

=head2 adslaturcurrattainablerate

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "port_id",
  { data_type => "integer", is_nullable => 0 },
  "port_adsl_updated",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "adsllinecoding",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "adsllinetype",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "adslatucinvvendorid",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "adslatucinvversionnumber",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "adslatuccurrsnrmgn",
  { data_type => "decimal", is_nullable => 0, size => [5, 1] },
  "adslatuccurratn",
  { data_type => "decimal", is_nullable => 0, size => [5, 1] },
  "adslatuccurroutputpwr",
  { data_type => "decimal", is_nullable => 0, size => [5, 1] },
  "adslatuccurrattainablerate",
  { data_type => "integer", is_nullable => 0 },
  "adslatucchancurrtxrate",
  { data_type => "integer", is_nullable => 0 },
  "adslaturinvserialnumber",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "adslaturinvvendorid",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "adslaturinvversionnumber",
  { data_type => "varchar", is_nullable => 0, size => 8 },
  "adslaturchancurrtxrate",
  { data_type => "integer", is_nullable => 0 },
  "adslaturcurrsnrmgn",
  { data_type => "decimal", is_nullable => 0, size => [5, 1] },
  "adslaturcurratn",
  { data_type => "decimal", is_nullable => 0, size => [5, 1] },
  "adslaturcurroutputpwr",
  { data_type => "decimal", is_nullable => 0, size => [5, 1] },
  "adslaturcurrattainablerate",
  { data_type => "integer", is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<interface_id>

=over 4

=item * L</port_id>

=back

=cut

__PACKAGE__->add_unique_constraint("interface_id", ["port_id"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YjD9LZsxM4F4iuIwDg2aww


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
