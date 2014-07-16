use utf8;
package Schema::Result::JuniAtmVp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::JuniAtmVp

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

=head1 TABLE: C<juniAtmVp>

=cut

__PACKAGE__->table("juniAtmVp");

=head1 ACCESSORS

=head2 juniatmvp_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=head2 vp_id

  data_type: 'integer'
  is_nullable: 0

=head2 vp_descr

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "juniatmvp_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "port_id",
  { data_type => "integer", is_nullable => 0 },
  "vp_id",
  { data_type => "integer", is_nullable => 0 },
  "vp_descr",
  { data_type => "varchar", is_nullable => 0, size => 32 },
);

=head1 PRIMARY KEY

=over 4

=item * L</juniatmvp_id>

=back

=cut

__PACKAGE__->set_primary_key("juniatmvp_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:KkaE/jyo76RNp706oVjLsw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
