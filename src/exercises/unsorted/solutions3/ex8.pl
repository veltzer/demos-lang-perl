#!/usr/bin/perl

use strict;
use warnings;

my(%hash);
open my $fh,"<", "/etc/passwd";
while (<$fh>) {
	chop;
	my(@vals) = split(":");
	print "@vals\n";
	my($key) = shift(@vals);
	$hash{$key}=\@vals;
}
close($fh);

foreach (keys(%hash)) {
	print "$_ -> @{$hash{$_}}\n";
}
