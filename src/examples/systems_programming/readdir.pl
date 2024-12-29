#!/usr/bin/perl

=pod

A simple demo of the perl 'readdir' function.

=cut

use strict;
use warnings;

my($dir)=".";
opendir($fd, "<", $dir) || die("error in opendir [$!]");
while(my $file=readdir($fd)) {
	print $file."\n";
}
closedir($fd) || die("error in closedir [$!]");
