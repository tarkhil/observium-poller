use utf8;
package Schema::Result::Toner;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Toner

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

=head1 TABLE: C<toner>

=cut

__PACKAGE__->table("toner");

=head1 ACCESSORS

=head2 toner_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 toner_index

  data_type: 'integer'
  is_nullable: 0

=head2 toner_type

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 toner_oid

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 toner_descr

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 toner_capacity

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 toner_current

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 toner_capacity_oid

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=cut

__PACKAGE__->add_columns(
  "toner_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "toner_index",
  { data_type => "integer", is_nullable => 0 },
  "toner_type",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "toner_oid",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "toner_descr",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "toner_capacity",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "toner_current",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "toner_capacity_oid",
  { data_type => "varchar", is_nullable => 1, size => 64 },
);

=head1 PRIMARY KEY

=over 4

=item * L</toner_id>

=back

=cut

__PACKAGE__->set_primary_key("toner_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RLozijX8ylobZOQT7NrRNQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
