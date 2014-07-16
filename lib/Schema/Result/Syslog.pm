use utf8;
package Schema::Result::Syslog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::Syslog

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

=head1 TABLE: C<syslog>

=cut

__PACKAGE__->table("syslog");

=head1 ACCESSORS

=head2 device_id

  data_type: 'integer'
  is_nullable: 1

=head2 facility

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 priority

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 level

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 tag

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 timestamp

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 program

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=head2 msg

  data_type: 'text'
  is_nullable: 1

=head2 seq

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "device_id",
  { data_type => "integer", is_nullable => 1 },
  "facility",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "priority",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "level",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "tag",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "timestamp",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "program",
  { data_type => "varchar", is_nullable => 1, size => 32 },
  "msg",
  { data_type => "text", is_nullable => 1 },
  "seq",
  {
    data_type => "bigint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</seq>

=back

=cut

__PACKAGE__->set_primary_key("seq");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lgPcpq8OYhzOnD0b+qqPFg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
