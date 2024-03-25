#!/usr/bin/perl -w

=head

=cut

use strict;
use warnings;

my(%words);
while (my($line) = <STDIN>) {
	chomp $line;
	my($word);
	foreach $word (split(" ", $line)) {
		$words{$word}++;
	}
}

while (my($word, $count) = each %words) {
	print "$word: $count\n";
}
