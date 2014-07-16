use utf8;
package Schema::Result::PortsStack;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::PortsStack

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

=head1 TABLE: C<ports_stack>

=cut

__PACKAGE__->table("ports_stack");

=head1 ACCESSORS

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 port_id_high

  data_type: 'integer'
  is_nullable: 0

=head2 port_id_low

  data_type: 'integer'
  is_nullable: 0

=head2 ifstackstatus

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "port_id_high",
  { data_type => "integer", is_nullable => 0 },
  "port_id_low",
  { data_type => "integer", is_nullable => 0 },
  "ifstackstatus",
  { data_type => "varchar", is_nullable => 0, size => 32 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<device_id>

=over 4

=item * L</device_id>

=item * L</port_id_high>

=item * L</port_id_low>

=back

=cut

__PACKAGE__->add_unique_constraint("device_id", ["device_id", "port_id_high", "port_id_low"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nRhuSC2lbLEkExgTZPN4zg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
