#!/usr/bin/perl

use strict;
use diagnostics;

open (my $fh, "<", "/etc/passwd") || die "error";

my(%p);
while(<$fh>) {
	my(@line) = split(":");
	my($login) = shift @line;
	$p{$login} = \@line;
}
close ($fh);

#print %p;
foreach my $login (keys %p) {
	my(@l) = @{$p{$login}};
	print "$login\t@l\n";
}
