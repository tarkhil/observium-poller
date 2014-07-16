use utf8;
package Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::User

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

=head1 TABLE: C<users>

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 username

  data_type: 'char'
  is_nullable: 0
  size: 30

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 34

=head2 realname

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 email

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 descr

  data_type: 'char'
  is_nullable: 0
  size: 30

=head2 level

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 can_modify_passwd

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 user_options

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "username",
  { data_type => "char", is_nullable => 0, size => 30 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 34 },
  "realname",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "email",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "descr",
  { data_type => "char", is_nullable => 0, size => 30 },
  "level",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "can_modify_passwd",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "user_options",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_id>

=back

=cut

__PACKAGE__->set_primary_key("user_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<username>

=over 4

=item * L</username>

=back

=cut

__PACKAGE__->add_unique_constraint("username", ["username"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OLqR0AKX7iUgEjJl8+svuA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
