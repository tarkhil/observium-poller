use utf8;
package Schema::Result::SensorsState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::SensorsState

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

=head1 TABLE: C<`sensors-state`>

=cut

__PACKAGE__->table(\"`sensors-state`");

=head1 ACCESSORS

=head2 sensor_id

  data_type: 'integer'
  is_nullable: 0

=head2 sensor_value

  data_type: 'float'
  is_nullable: 0
  size: [9,2]

=head2 sensor_polled

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "sensor_id",
  { data_type => "integer", is_nullable => 0 },
  "sensor_value",
  { data_type => "float", is_nullable => 0, size => [9, 2] },
  "sensor_polled",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</sensor_id>

=back

=cut

__PACKAGE__->set_primary_key("sensor_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DvG+tNFcEw3tAm9qYqIcDg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
