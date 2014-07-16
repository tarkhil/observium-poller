use utf8;
package Schema::Result::ApplicationsState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::ApplicationsState

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

=head1 TABLE: C<`applications-state`>

=cut

__PACKAGE__->table(\"`applications-state`");

=head1 ACCESSORS

=head2 application_id

  data_type: 'integer'
  is_nullable: 0

=head2 app_last_polled

  data_type: 'integer'
  is_nullable: 0

=head2 app_status

  data_type: 'tinyint'
  is_nullable: 0

=head2 app_state

  data_type: 'varchar'
  is_nullable: 0
  size: 1024

=cut

__PACKAGE__->add_columns(
  "application_id",
  { data_type => "integer", is_nullable => 0 },
  "app_last_polled",
  { data_type => "integer", is_nullable => 0 },
  "app_status",
  { data_type => "tinyint", is_nullable => 0 },
  "app_state",
  { data_type => "varchar", is_nullable => 0, size => 1024 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<application_id>

=over 4

=item * L</application_id>

=back

=cut

__PACKAGE__->add_unique_constraint("application_id", ["application_id"]);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:F6ew9PE9/5mwbtywDZaQsA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
