#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

my $lines=0;
while(my $line=<>) {
	$lines++;
}
print "$lines\n";
