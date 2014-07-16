use utf8;
package Schema::Result::Alert;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Alert

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

=head1 TABLE: C<alerts>

=cut

__PACKAGE__->table("alerts");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 importance

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 device_id

  data_type: 'integer'
  is_nullable: 0

=head2 message

  data_type: 'text'
  is_nullable: 0

=head2 time_logged

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 alerted

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "importance",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "device_id",
  { data_type => "integer", is_nullable => 0 },
  "message",
  { data_type => "text", is_nullable => 0 },
  "time_logged",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "alerted",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:PWsZFp2reCGktHWUoi0yhQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
