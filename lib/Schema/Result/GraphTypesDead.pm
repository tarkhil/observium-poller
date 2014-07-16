use utf8;
package Schema::Result::GraphTypesDead;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::GraphTypesDead

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

=head1 TABLE: C<graph_types_dead>

=cut

__PACKAGE__->table("graph_types_dead");

=head1 ACCESSORS

=head2 graph_type

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 graph_subtype

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 graph_section

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 graph_descr

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 graph_order

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "graph_type",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "graph_subtype",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "graph_section",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "graph_descr",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "graph_order",
  { data_type => "integer", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rZVTxBMWY8TWkHR59S2f/A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
