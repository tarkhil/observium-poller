use utf8;
package Schema::Result::Poller;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Poller

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

=head1 TABLE: C<pollers>

=cut

__PACKAGE__->table("pollers");

=head1 ACCESSORS

=head2 poller_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=head2 enabled

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "poller_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 128 },
  "enabled",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</poller_id>

=back

=cut

__PACKAGE__->set_primary_key("poller_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<name>

=over 4

=item * L</name>

=back

=cut

__PACKAGE__->add_unique_constraint("name", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-17 20:47:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/AGycsg9Zj/rkD4bvfFahg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
