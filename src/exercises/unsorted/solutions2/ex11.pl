#!/usr/bin/perl -w

use strict;
use diagnostics;

open (IN, "</etc/passwd") || die "error";

my(%p);
while(<IN>) {
	my(@line) = split(":");
	my($login) = shift @line;
	$p{$login} = \@line;
}

close (IN);

#print %p;
my($login);
foreach $login (keys %p) {
	my(@l) = @{$p{$login}};
	print "$login\t@l\n";
}
