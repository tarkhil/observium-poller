package RRDUtils;
use Exporter;
use RRDs;
use Utils;

@EXPORT = qw( InitRRD UpdateRRD );

sub InitRRD {
  my ( $path, $file, $initstr ) = @_;
  return 1 if $main::norrd;
  return 1 if -f $path.'/'.$file;
  print "Creating  $path/$file\n";
  RRDs::create( $path.'/'.$file, $initstr );
  return 1;
}

sub UpdateRRD {
  my ( $path, $file, $value ) = @_;
  return 1 if $main::norrd;
  debug_msg(2, "Updating ", $path.'/'.$file, " with ", $value, "\n");
  RRDs::update( $path.'/'.$file, $value );
  return 1;
}

sub UpdateRRDMap {
  my ( $path, $file, $data ) = @_;
  return 1 if $main::norrd;
  my $rrdline = join(':', 'N', map { defined($_)?$_:'U' } @$data);
  UpdateRRD( $path, $file, $rrdline );
}
1;
