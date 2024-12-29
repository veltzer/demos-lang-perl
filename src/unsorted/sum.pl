#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

my $sum=0;
while(my $line=<STDIN>) {
	chomp($line);
	$sum+=$line;
}
print "$sum\n";
