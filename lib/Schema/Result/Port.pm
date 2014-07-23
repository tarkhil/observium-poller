use utf8;
package Schema::Result::Port;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Port

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

=head1 TABLE: C<ports>

=cut

__PACKAGE__->table("ports");

=head1 ACCESSORS

=head2 port_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  default_value: 0
  is_foreign_key: 1
  is_nullable: 0

=head2 port_64bit

  data_type: 'tinyint'
  is_nullable: 1

=head2 port_label

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 port_descr_type

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 port_descr_descr

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 port_descr_circuit

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 port_descr_speed

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 port_descr_notes

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ifdescr

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 ifname

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 portname

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 ifindex

  data_type: 'integer'
  is_nullable: 0

=head2 ifspeed

  data_type: 'bigint'
  is_nullable: 1

=head2 ifconnectorpresent

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 ifpromiscuousmode

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 ifhighspeed

  data_type: 'integer'
  is_nullable: 1

=head2 ifoperstatus

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 ifadminstatus

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 ifduplex

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 ifmtu

  data_type: 'integer'
  is_nullable: 1

=head2 iftype

  data_type: 'text'
  is_nullable: 1

=head2 ifalias

  data_type: 'text'
  is_nullable: 1

=head2 ifphysaddress

  data_type: 'text'
  is_nullable: 1

=head2 ifhardtype

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 iflastchange

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 ifvlan

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 iftrunk

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 ifvrf

  data_type: 'integer'
  is_nullable: 1

=head2 ignore

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 disabled

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 detailed

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 deleted

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 pagpoperationmode

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 pagpportstate

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 pagppartnerdeviceid

  data_type: 'varchar'
  is_nullable: 1
  size: 48

=head2 pagppartnerlearnmethod

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 pagppartnerifindex

  data_type: 'integer'
  is_nullable: 1

=head2 pagppartnergroupifindex

  data_type: 'integer'
  is_nullable: 1

=head2 pagppartnerdevicename

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 pagpethcoperationmode

  data_type: 'varchar'
  is_nullable: 1
  size: 16

=head2 pagpdeviceid

  data_type: 'varchar'
  is_nullable: 1
  size: 48

=head2 pagpgroupifindex

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "port_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "device_id",
  {
    data_type      => "integer",
    default_value  => 0,
    is_foreign_key => 1,
    is_nullable    => 0,
  },
  "port_64bit",
  { data_type => "tinyint", is_nullable => 1 },
  "port_label",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "port_descr_type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "port_descr_descr",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "port_descr_circuit",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "port_descr_speed",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "port_descr_notes",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ifdescr",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "ifname",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "portname",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "ifindex",
  { data_type => "integer", is_nullable => 0 },
  "ifspeed",
  { data_type => "bigint", is_nullable => 1 },
  "ifconnectorpresent",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "ifpromiscuousmode",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "ifhighspeed",
  { data_type => "integer", is_nullable => 1 },
  "ifoperstatus",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "ifadminstatus",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "ifduplex",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "ifmtu",
  { data_type => "integer", is_nullable => 1 },
  "iftype",
  { data_type => "text", is_nullable => 1 },
  "ifalias",
  { data_type => "text", is_nullable => 1 },
  "ifphysaddress",
  { data_type => "text", is_nullable => 1 },
  "ifhardtype",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "iflastchange",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "ifvlan",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "iftrunk",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "ifvrf",
  { data_type => "integer", is_nullable => 1 },
  "ignore",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "disabled",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "detailed",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "deleted",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "pagpoperationmode",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "pagpportstate",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "pagppartnerdeviceid",
  { data_type => "varchar", is_nullable => 1, size => 48 },
  "pagppartnerlearnmethod",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "pagppartnerifindex",
  { data_type => "integer", is_nullable => 1 },
  "pagppartnergroupifindex",
  { data_type => "integer", is_nullable => 1 },
  "pagppartnerdevicename",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "pagpethcoperationmode",
  { data_type => "varchar", is_nullable => 1, size => 16 },
  "pagpdeviceid",
  { data_type => "varchar", is_nullable => 1, size => 48 },
  "pagpgroupifindex",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</port_id>

=back

=cut

__PACKAGE__->set_primary_key("port_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<device_ifIndex>

=over 4

=item * L</device_id>

=item * L</ifindex>

=back

=cut

__PACKAGE__->add_unique_constraint("device_ifIndex", ["device_id", "ifindex"]);

=head1 RELATIONS

=head2 device

Type: belongs_to

Related object: L<Schema::Result::Device>

=cut

__PACKAGE__->belongs_to(
  "device",
  "Schema::Result::Device",
  { device_id => "device_id" },
  { is_deferrable => 1, on_delete => "RESTRICT", on_update => "RESTRICT" },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-23 16:19:21
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:u3Ws7ypPABROb3qm5d05+w
__PACKAGE__->might_have( state => 'Schema::Result::PortsState', 'port_id' );

1;
