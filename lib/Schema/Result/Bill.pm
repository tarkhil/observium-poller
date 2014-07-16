use utf8;
package Schema::Result::Bill;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Bill

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

=head1 TABLE: C<bills>

=cut

__PACKAGE__->table("bills");

=head1 ACCESSORS

=head2 bill_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 bill_name

  data_type: 'text'
  is_nullable: 0

=head2 bill_type

  data_type: 'text'
  is_nullable: 0

=head2 bill_cdr

  data_type: 'bigint'
  is_nullable: 1

=head2 bill_day

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=head2 bill_quota

  data_type: 'bigint'
  is_nullable: 1

=head2 bill_polled

  data_type: 'integer'
  is_nullable: 0

=head2 bill_custid

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 bill_ref

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 bill_notes

  data_type: 'varchar'
  is_nullable: 0
  size: 256

=head2 bill_autoadded

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "bill_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "bill_name",
  { data_type => "text", is_nullable => 0 },
  "bill_type",
  { data_type => "text", is_nullable => 0 },
  "bill_cdr",
  { data_type => "bigint", is_nullable => 1 },
  "bill_day",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
  "bill_quota",
  { data_type => "bigint", is_nullable => 1 },
  "bill_polled",
  { data_type => "integer", is_nullable => 0 },
  "bill_custid",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "bill_ref",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "bill_notes",
  { data_type => "varchar", is_nullable => 0, size => 256 },
  "bill_autoadded",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<bill_id>

=over 4

=item * L</bill_id>

=back

=cut

__PACKAGE__->add_unique_constraint("bill_id", ["bill_id"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fNAbJR5OmmZwo9O3VLaa4A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
