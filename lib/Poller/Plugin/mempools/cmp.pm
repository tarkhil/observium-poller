package Poller::Plugin::mempools::cmp;
use Moose;
use SNMP;
use Data::Dumper;

sub BUILD {
  SNMP::loadModules('CISCO-MEMORY-POOL-MIB');
}

sub oids_walk { [ qw/ciscoMemoryPoolUsed ciscoMemoryPoolFree ciscoMemoryPoolLargestFree/ ] };

sub process {
  my ( $self, $device, $memp ) = @_;
  $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{used} = $device->{snmp_data}->{'ciscoMemoryPoolUsed'.'.'.$memp->mempool_index};
  $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{free} = $device->{snmp_data}->{'ciscoMemoryPoolFree'.'.'.$memp->mempool_index};
  $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{largestfree} = $device->{snmp_data}->{'ciscoMemoryPoolLargestFree/'.'.'.$memp->mempool_index};
  $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{total} = $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{used}+$device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{free};
}

1;
