#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

while(my $line=<STDIN>) {
	chomp($line);
	my ($x,$y)=split("\\+",$line);
	print "".$x+$y."\n";
}
