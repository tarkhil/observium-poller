use utf8;
package Schema::Result::IpMac;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Schema::Result::IpMac

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

=head1 TABLE: C<ip_mac>

=cut

__PACKAGE__->table("ip_mac");

=head1 ACCESSORS

=head2 mac_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 port_id

  data_type: 'integer'
  is_nullable: 0

=head2 mac_address

  data_type: 'char'
  is_nullable: 0
  size: 12

=head2 ip_address

  data_type: 'varchar'
  is_nullable: 0
  size: 39

=head2 ip_version

  data_type: 'tinyint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "mac_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "port_id",
  { data_type => "integer", is_nullable => 0 },
  "mac_address",
  { data_type => "char", is_nullable => 0, size => 12 },
  "ip_address",
  { data_type => "varchar", is_nullable => 0, size => 39 },
  "ip_version",
  { data_type => "tinyint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</mac_id>

=back

=cut

__PACKAGE__->set_primary_key("mac_id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-07-16 11:23:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ftLCrc+ihVIJ1DiUBMfd3Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
