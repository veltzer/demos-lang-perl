#!/usr/bin/perl -w

open (IN, "</etc/passwd") || die "error";

while(<IN>) {
	@line = split(":");
	$login = shift @line;
	$p{$login} = \@line;
}

close (IN);

#print %p;
foreach $login (keys %p) {
	@l = @{$p{$login}};
	print "$login\t@l\n";
}
