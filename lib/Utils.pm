package Utils;
use base qw/Exporter/;
@EXPORT    = qw( EX_OK EX_USAGE EX_DATAERR EX_NOINPUT EX_NOUSER EX_NOHOST 
		 EX_UNAVAILABLE EX_SOFTWARE EX_OSERR  EX_OSFILE EX_CANTCREAT 
		 EX_IOERR EX_TEMPFAIL EX_PROTOCOL  EX_NOPERM  EX_CONFIG 
		 debug_msg );

sub EX_OK () {0;}
sub EX__BASE () {64;}
sub EX_USAGE () {64;}
sub EX_DATAERR () {65;}
sub EX_NOINPUT () {66;}
sub EX_NOUSER () {67;}
sub EX_NOHOST () {68;}
sub EX_UNAVAILABLE () {69;}
sub EX_SOFTWARE () {70;}
sub EX_OSERR () {71;}
sub EX_OSFILE () {72;}
sub EX_CANTCREAT () {73;}
sub EX_IOERR () {74;}
sub EX_TEMPFAIL () {75;}
sub EX_PROTOCOL () {76;}
sub EX_NOPERM () {77;}
sub EX_CONFIG () {78;}
sub EX__MAX () {78;}

sub debug_msg {
  my $level = shift;
  return if $level > $main::debug;
  print @_;
}

1;
