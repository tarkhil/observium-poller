use utf8;
package Schema::Result::StorageState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::StorageState

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

=head1 TABLE: C<`storage-state`>

=cut

__PACKAGE__->table(\"`storage-state`");

=head1 ACCESSORS

=head2 storage_id

  data_type: 'integer'
  is_nullable: 0

=head2 storage_polled

  data_type: 'integer'
  is_nullable: 0

=head2 storage_size

  data_type: 'bigint'
  is_nullable: 0

=head2 storage_units

  data_type: 'integer'
  is_nullable: 0

=head2 storage_used

  data_type: 'bigint'
  is_nullable: 0

=head2 storage_free

  data_type: 'bigint'
  is_nullable: 0

=head2 storage_perc

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "storage_id",
  { data_type => "integer", is_nullable => 0 },
  "storage_polled",
  { data_type => "integer", is_nullable => 0 },
  "storage_size",
  { data_type => "bigint", is_nullable => 0 },
  "storage_units",
  { data_type => "integer", is_nullable => 0 },
  "storage_used",
  { data_type => "bigint", is_nullable => 0 },
  "storage_free",
  { data_type => "bigint", is_nullable => 0 },
  "storage_perc",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</storage_id>

=back

=cut

__PACKAGE__->set_primary_key("storage_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Ec+XIpf/bRy9Wsew/IVslQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
