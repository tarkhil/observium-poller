use utf8;
package Schema::Result::AlertAssoc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::AlertAssoc

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

=head1 TABLE: C<alert_assoc>

=cut

__PACKAGE__->table("alert_assoc");

=head1 ACCESSORS

=head2 alert_assoc_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 alert_test_id

  data_type: 'integer'
  is_nullable: 0

=head2 entity_type

  data_type: 'varchar'
  is_nullable: 0
  size: 64

=head2 device_attributes

  data_type: 'text'
  is_nullable: 1

=head2 attributes

  data_type: 'text'
  is_nullable: 1

=head2 enable

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=head2 alerter

  data_type: 'varchar'
  is_nullable: 1
  size: 64

=head2 severity

  data_type: 'integer'
  is_nullable: 1

=head2 count

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "alert_assoc_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "alert_test_id",
  { data_type => "integer", is_nullable => 0 },
  "entity_type",
  { data_type => "varchar", is_nullable => 0, size => 64 },
  "device_attributes",
  { data_type => "text", is_nullable => 1 },
  "attributes",
  { data_type => "text", is_nullable => 1 },
  "enable",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
  "alerter",
  { data_type => "varchar", is_nullable => 1, size => 64 },
  "severity",
  { data_type => "integer", is_nullable => 1 },
  "count",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</alert_assoc_id>

=back

=cut

__PACKAGE__->set_primary_key("alert_assoc_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SyZJnWm+eLNrzh3SqEAWxA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
