#!/usr/bin/perl

use strict;
use warnings;

my $lines=0;
while(my $line=<>) {
	$lines++;
}
print "$lines\n";
