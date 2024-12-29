#!/usr/bin/perl

=head

=cut

use strict;
use warnings;

my(%words);
while (my($line) = <STDIN>) {
	chomp $line;
	foreach my $word (split(" ", $line)) {
		$words{$word}++;
	}
}

while (my($word, $count) = each %words) {
	print "$word: $count\n";
}
