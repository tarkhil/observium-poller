use utf8;
package Schema::Result::UsersCkey;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::UsersCkey

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

=head1 TABLE: C<users_ckeys>

=cut

__PACKAGE__->table("users_ckeys");

=head1 ACCESSORS

=head2 user_ckey_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 user_encpass

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 expire

  data_type: 'integer'
  is_nullable: 0

=head2 username

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 user_uniq

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=head2 user_ckey

  data_type: 'varchar'
  is_nullable: 0
  size: 32

=cut

__PACKAGE__->add_columns(
  "user_ckey_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "user_encpass",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "expire",
  { data_type => "integer", is_nullable => 0 },
  "username",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "user_uniq",
  { data_type => "varchar", is_nullable => 0, size => 32 },
  "user_ckey",
  { data_type => "varchar", is_nullable => 0, size => 32 },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_ckey_id>

=back

=cut

__PACKAGE__->set_primary_key("user_ckey_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Th6A5opa23iF2ocaljz+zA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
