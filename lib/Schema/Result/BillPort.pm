use utf8;
package Schema::Result::BillPort;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::BillPort

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

=head1 TABLE: C<bill_ports>

=cut

__PACKAGE__->table("bill_ports");

=head1 ACCESSORS

=head2 bill_id

  data_type: 'integer'
  is_nullable: 0

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=head2 bill_port_autoadded

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 bill_port_polled

  data_type: 'integer'
  is_nullable: 0

=head2 bill_port_period

  data_type: 'integer'
  is_nullable: 0

=head2 bill_port_counter_in

  data_type: 'bigint'
  is_nullable: 1

=head2 bill_port_delta_in

  data_type: 'bigint'
  is_nullable: 1

=head2 bill_port_counter_out

  data_type: 'bigint'
  is_nullable: 1

=head2 bill_port_delta_out

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "bill_id",
  { data_type => "integer", is_nullable => 0 },
  "port_id",
  { data_type => "integer", is_nullable => 0 },
  "bill_port_autoadded",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "bill_port_polled",
  { data_type => "integer", is_nullable => 0 },
  "bill_port_period",
  { data_type => "integer", is_nullable => 0 },
  "bill_port_counter_in",
  { data_type => "bigint", is_nullable => 1 },
  "bill_port_delta_in",
  { data_type => "bigint", is_nullable => 1 },
  "bill_port_counter_out",
  { data_type => "bigint", is_nullable => 1 },
  "bill_port_delta_out",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<bill_id_3>

=over 4

=item * L</bill_id>

=item * L</port_id>

=back

=cut

__PACKAGE__->add_unique_constraint("bill_id_3", ["bill_id", "port_id"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vVP7A736H0fB4Gbnv4ZfQA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
