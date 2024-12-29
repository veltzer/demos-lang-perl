#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

my $line;
while ($line = <STDIN>) {
	my @words = split(' ', $line);
	foreach my $word (@words) {
		$word = substr($word, 0, 5);
	}
	print join(' ', @words), "\n";
}
