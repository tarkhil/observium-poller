use utf8;
package Schema::Result::Processor;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Processor

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

=head1 TABLE: C<processors>

=cut

__PACKAGE__->table("processors");

=head1 ACCESSORS

=head2 processor_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 entphysicalindex

  data_type: 'integer'
  is_nullable: 1

=head2 hrdeviceindex

  data_type: 'integer'
  is_nullable: 1

=head2 device_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 processor_oid

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 processor_index

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 processor_type

  data_type: 'varchar'
  is_nullable: 0
  size: 16

=head2 processor_descr

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 processor_precision

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "processor_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "entphysicalindex",
  { data_type => "integer", is_nullable => 1 },
  "hrdeviceindex",
  { data_type => "integer", is_nullable => 1 },
  "device_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "processor_oid",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "processor_index",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "processor_type",
  { data_type => "varchar", is_nullable => 0, size => 16 },
  "processor_descr",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "processor_precision",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</processor_id>

=back

=cut

__PACKAGE__->set_primary_key("processor_id");

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


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-22 14:25:01
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:p5POsd2mbrEqzvpD2wQ0kw
use Utils;
__PACKAGE__->might_have( state => 'Schema::Result::ProcessorsState', 'processor_id' );

sub processor_oid_name {
  my $self = shift;
  my ( $value ) = @_;
  if ( defined $value ) {
    ...;
  }
  else {
    return Utils::translateToName( $self->processor_oid );
  }
}

sub processor_oid_oid {
  my $self = shift;
  my ( $value ) = @_;
  if ( defined $value ) {
    ...;
  }
  else {
    return Utils::translateToOid( $self->processor_oid );
  }
}

1;
