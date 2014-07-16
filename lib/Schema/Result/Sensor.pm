use utf8;
package Schema::Result::Sensor;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Sensor

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

=head1 TABLE: C<sensors>

=cut

__PACKAGE__->table("sensors");

=head1 ACCESSORS

=head2 sensor_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 sensor_deleted

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 sensor_class

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 device_id

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 poller_type

  data_type: 'varchar'
  default_value: 'snmp'
  is_nullable: 0
  size: 16

=head2 sensor_oid

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 sensor_index

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 sensor_type

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 sensor_descr

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 sensor_divisor

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 sensor_multiplier

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 sensor_limit

  data_type: 'float'
  is_nullable: 1

=head2 sensor_limit_warn

  data_type: 'float'
  is_nullable: 1

=head2 sensor_limit_low

  data_type: 'float'
  is_nullable: 1

=head2 sensor_limit_low_warn

  data_type: 'float'
  is_nullable: 1

=head2 entphysicalindex

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 entphysicalindex_measured

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 measured_class

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 measured_entity

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 sensor_ignore

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 sensor_disable

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "sensor_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "sensor_deleted",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "sensor_class",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "device_id",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "poller_type",
  {
    data_type => "varchar",
    default_value => "snmp",
    is_nullable => 0,
    size => 16,
  },
  "sensor_oid",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "sensor_index",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "sensor_type",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "sensor_descr",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "sensor_divisor",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "sensor_multiplier",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "sensor_limit",
  { data_type => "float", is_nullable => 1 },
  "sensor_limit_warn",
  { data_type => "float", is_nullable => 1 },
  "sensor_limit_low",
  { data_type => "float", is_nullable => 1 },
  "sensor_limit_low_warn",
  { data_type => "float", is_nullable => 1 },
  "entphysicalindex",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "entphysicalindex_measured",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "measured_class",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "measured_entity",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "sensor_ignore",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "sensor_disable",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</sensor_id>

=back

=cut

__PACKAGE__->set_primary_key("sensor_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:p2bNcCIKIvpI0v6y5DgWmQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
