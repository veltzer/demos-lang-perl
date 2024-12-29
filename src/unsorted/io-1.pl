#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

# Without <>
if (@ARGV > 0) {
	foreach my $file (@ARGV) {
		open(my $fh, "<", $file) || die "can't open $file: $!\n";
		while (<$fh>) {
			print length > 5 ? substr($_, 0, 5) . "\n" : $_;
		}
		close $fh;
	}
} else {
	while (<STDIN>) {
		print length > 5 ? substr($_, 0, 5) . "\n" : $_;
	}
}

# With <>
while (<>) {
	print length > 5 ? substr($_, 0, 5) . "\n" : $_;
}
