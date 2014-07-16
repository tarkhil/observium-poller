use utf8;
package Schema::Result::AccesspointsState;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::AccesspointsState - Access Points

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

=head1 TABLE: C<`accesspoints-state`>

=cut

__PACKAGE__->table(\"`accesspoints-state`");

=head1 ACCESSORS

=head2 accesspoint_id

  data_type: 'integer'
  is_nullable: 0

=head2 channel

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 txpow

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 radioutil

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 numasoclients

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 nummonclients

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 numactbssid

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 nummonbssid

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 interference

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "accesspoint_id",
  { data_type => "integer", is_nullable => 0 },
  "channel",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "txpow",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "radioutil",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "numasoclients",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "nummonclients",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "numactbssid",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "nummonbssid",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "interference",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</accesspoint_id>

=back

=cut

__PACKAGE__->set_primary_key("accesspoint_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xEvzhYFwVw+m/Y6lOncHSQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
