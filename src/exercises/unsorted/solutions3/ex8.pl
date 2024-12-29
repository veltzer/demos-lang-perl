#!/usr/bin/perl -w

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
