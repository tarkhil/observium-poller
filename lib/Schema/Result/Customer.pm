use utf8;
package Schema::Result::Customer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Customer

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

=head1 TABLE: C<customers>

=cut

__PACKAGE__->table("customers");

=head1 ACCESSORS

=head2 customer_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 username

  data_type: 'char'
  is_nullable: 0
  size: 64

=head2 password

  data_type: 'char'
  is_nullable: 0
  size: 32

=head2 string

  data_type: 'char'
  is_nullable: 0
  size: 64

=head2 level

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "customer_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "username",
  { data_type => "char", is_nullable => 0, size => 64 },
  "password",
  { data_type => "char", is_nullable => 0, size => 32 },
  "string",
  { data_type => "char", is_nullable => 0, size => 64 },
  "level",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</customer_id>

=back

=cut

__PACKAGE__->set_primary_key("customer_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<username>

=over 4

=item * L</username>

=back

=cut

__PACKAGE__->add_unique_constraint("username", ["username"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Bb/fD9FZ2VxhEJaUdDv/rQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
