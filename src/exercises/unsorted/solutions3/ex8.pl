#!/usr/bin/perl

use strict;
use warnings;

my(%hash);
open PW,"< /etc/passwd";
while (<PW>) {
	chop;
	my(@vals) = split(":");
	print "@vals\n";
	my($key) = shift(@vals);
	$hash{$key}=\@vals;
}

foreach (keys(%hash)) {
	print "$_ -> @{$hash{$_}}\n";
}
