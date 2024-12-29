#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

while (my($line)=<STDIN>) {
	chomp($line);
	print $line."\n";
}
print "After the loop...\n"
