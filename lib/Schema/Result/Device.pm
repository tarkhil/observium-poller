use utf8;
package Schema::Result::Device;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Device

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

=head1 TABLE: C<devices>

=cut

__PACKAGE__->table("devices");

=head1 ACCESSORS

=head2 device_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 hostname

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 sysname

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 community

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 authlevel

  data_type: 'enum'
  extra: {list => ["noAuthNoPriv","authNoPriv","authPriv"]}
  is_nullable: 1

=head2 authname

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 authpass

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 authalgo

  data_type: 'enum'
  extra: {list => ["MD5","SHA"]}
  is_nullable: 1

=head2 cryptopass

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 cryptoalgo

  data_type: 'enum'
  extra: {list => ["AES","DES"]}
  is_nullable: 1

=head2 snmpver

  data_type: 'enum'
  default_value: 'v2c'
  extra: {list => ["v1","v2c","v3"]}
  is_nullable: 0

=head2 port

  data_type: 'smallint'
  default_value: 161
  extra: {unsigned => 1}
  is_nullable: 0

=head2 timeout

  data_type: 'integer'
  is_nullable: 1

=head2 retries

  data_type: 'integer'
  is_nullable: 1

=head2 ssh_port

  data_type: 'integer'
  default_value: 22
  is_nullable: 0

=head2 agent_version

  data_type: 'integer'
  is_nullable: 1

=head2 transport

  data_type: 'enum'
  default_value: 'udp'
  extra: {list => ["udp","tcp","udp6","tcp6"]}
  is_nullable: 0

=head2 bgplocalas

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 sysobjectid

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 sysdescr

  data_type: 'text'
  is_nullable: 1

=head2 syscontact

  data_type: 'text'
  is_nullable: 1

=head2 version

  data_type: 'text'
  is_nullable: 1

=head2 hardware

  data_type: 'text'
  is_nullable: 1

=head2 features

  data_type: 'text'
  is_nullable: 1

=head2 location

  data_type: 'text'
  is_nullable: 1

=head2 location_lat

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 location_lon

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 location_city

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 location_county

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 location_state

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 location_country

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 location_geoapi

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 os

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 status

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 ignore

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 ignore_until

  data_type: 'integer'
  is_nullable: 1

=head2 asset_tag

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 disabled

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 uptime

  data_type: 'bigint'
  is_nullable: 1

=head2 last_polled

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 last_discovered

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 is_polling

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 is_discovering

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 last_polled_timetaken

  data_type: 'double precision'
  is_nullable: 1
  size: [5,2]

=head2 last_discovered_timetaken

  data_type: 'double precision'
  is_nullable: 1
  size: [5,2]

=head2 purpose

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 type

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 serial

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 icon

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 device_state

  data_type: 'text'
  is_nullable: 1

=head2 distro

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 distro_ver

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 kernel

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 arch

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=cut

__PACKAGE__->add_columns(
  "device_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "hostname",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "sysname",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "community",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "authlevel",
  {
    data_type => "enum",
    extra => { list => ["noAuthNoPriv", "authNoPriv", "authPriv"] },
    is_nullable => 1,
  },
  "authname",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "authpass",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "authalgo",
  {
    data_type => "enum",
    extra => { list => ["MD5", "SHA"] },
    is_nullable => 1,
  },
  "cryptopass",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "cryptoalgo",
  {
    data_type => "enum",
    extra => { list => ["AES", "DES"] },
    is_nullable => 1,
  },
  "snmpver",
  {
    data_type => "enum",
    default_value => "v2c",
    extra => { list => ["v1", "v2c", "v3"] },
    is_nullable => 0,
  },
  "port",
  {
    data_type => "smallint",
    default_value => 161,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "timeout",
  { data_type => "integer", is_nullable => 1 },
  "retries",
  { data_type => "integer", is_nullable => 1 },
  "ssh_port",
  { data_type => "integer", default_value => 22, is_nullable => 0 },
  "agent_version",
  { data_type => "integer", is_nullable => 1 },
  "transport",
  {
    data_type => "enum",
    default_value => "udp",
    extra => { list => ["udp", "tcp", "udp6", "tcp6"] },
    is_nullable => 0,
  },
  "bgplocalas",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "sysobjectid",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "sysdescr",
  { data_type => "text", is_nullable => 1 },
  "syscontact",
  { data_type => "text", is_nullable => 1 },
  "version",
  { data_type => "text", is_nullable => 1 },
  "hardware",
  { data_type => "text", is_nullable => 1 },
  "features",
  { data_type => "text", is_nullable => 1 },
  "location",
  { data_type => "text", is_nullable => 1 },
  "location_lat",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "location_lon",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "location_city",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "location_county",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "location_state",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "location_country",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "location_geoapi",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "os",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "status",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "ignore",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "ignore_until",
  { data_type => "integer", is_nullable => 1 },
  "asset_tag",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "disabled",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "uptime",
  { data_type => "bigint", is_nullable => 1 },
  "last_polled",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "last_discovered",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "is_polling",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "is_discovering",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "last_polled_timetaken",
  { data_type => "double precision", is_nullable => 1, size => [5, 2] },
  "last_discovered_timetaken",
  { data_type => "double precision", is_nullable => 1, size => [5, 2] },
  "purpose",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "type",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "serial",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "icon",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "device_state",
  { data_type => "text", is_nullable => 1 },
  "distro",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "distro_ver",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "kernel",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "arch",
  { data_type => "varchar", is_nullable => 1, size => 8 },
);

=head1 PRIMARY KEY

=over 4

=item * L</device_id>

=back

=cut

__PACKAGE__->set_primary_key("device_id");

=head1 RELATIONS

=head2 devices_attribs

Type: has_many

Related object: L<Schema::Result::DevicesAttrib>

=cut

__PACKAGE__->has_many(
  "devices_attribs",
  "Schema::Result::DevicesAttrib",
  { "foreign.device_id" => "self.device_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 sensors

Type: has_many

Related object: L<Schema::Result::Sensor>

=cut

__PACKAGE__->has_many(
  "sensors",
  "Schema::Result::Sensor",
  { "foreign.device_id" => "self.device_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-17 20:47:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:pEajENN+Dwvju2l9oWw5xA

=head1 ACCESS FUNCTIONS

=head2 get_pollers

Get all active pollers for device

=cut

sub get_pollers {
  my $self = shift;
  my $disabled = $self->search_related( 'devices_attribs', 
				       {
					attrib_value => 0,
					attrib_type => { -like => 'poll_%' },
				       },
				      {
				       select => [ \"substr(attrib_type,6)" ],
				      });
  return $self->result_source->schema->resultset('Poller')->search_rs
    ( {
       enabled => 1,
       name => {
		'not in' => $disabled->as_query()
	       },
      },
      { Select => [qw/name/] } );
}


1;
