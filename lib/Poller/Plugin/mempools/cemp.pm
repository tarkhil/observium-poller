package Poller::Plugin::mempools::cemp;
use Moose;
use SNMP;

sub BUILD {
  SNMP::loadModules( 'CISCO-ENHANCED-MEMPOOL-MIB' );
}

sub oids_walk { [ qw/cempMemPoolUsed cempMemPoolFree cempMemPoolLargestFree/ ] };

sub process {
  my ( $self, $device, $memp ) = @_;
  $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{used} = $device->{snmp_data}->{'cempMemoryPoolUsed'.'.'.$memp->mempool_index};
  $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{free} = $device->{snmp_data}->{'cempMemoryPoolFree'.'.'.$memp->mempool_index};
  $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{largestfree} = $device->{snmp_data}->{'cempMemoryPoolLargestFree/'.'.'.$memp->mempool_index};
  $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{total} = $device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{used}+$device->{snmp_data}->{mempool}->{ $memp->mempool_index }->{free};
  
}



1;
