#!/usr/bin/perl -w

=head

=cut

use strict;
use warnings;

while ($line = <STDIN>) {
	chomp $line;
	foreach $word (split(" ", $line)) {
		$words{$word}++;
	}
}

while (($word, $count) = each %words) {
	print "$word: $count\n";
}
