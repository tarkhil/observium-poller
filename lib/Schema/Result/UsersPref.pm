use utf8;
package Schema::Result::UsersPref;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::UsersPref

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

=head1 TABLE: C<users_prefs>

=cut

__PACKAGE__->table("users_prefs");

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  is_nullable: 0

=head2 pref

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 128

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "integer", is_nullable => 0 },
  "pref",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 128 },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_id>

=back

=cut

__PACKAGE__->set_primary_key("user_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<user_id.pref>

=over 4

=item * L</user_id>

=item * L</pref>

=back

=cut

__PACKAGE__->add_unique_constraint("user_id.pref", ["user_id", "pref"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:wASfQmGsdIROMouT5r6NNw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
