#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

die "usage: $0 <dir_name>\n" if (@ARGV != 1);

my($dir) = shift;

opendir(my $fh, $dir) || die "can't open $dir: $!\n";
while (my($f) = readdir $fh) {
	print "$f\n" if (substr($f, 0, 1) eq ".");
}
closedir $fh;
