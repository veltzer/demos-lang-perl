#!/usr/bin/perl -w

=head

This is a solution to the digit counting exercise.

=cut

use strict;
use warnings;

my @counters;
my $line;
while ($line = <STDIN>) {
	chomp $line;
	foreach my $digit (split('', $line)) {
		$counters[$digit]++;
	}
}

for (my $i = 0; $i < 10; $i++) {
	print "$i: ", defined $counters[$i] ? $counters[$i] : 0, "\n";
}
