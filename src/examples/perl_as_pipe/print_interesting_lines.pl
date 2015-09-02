#!/usr/bin/perl -w

my $line;
while($line=<STDIN>) {
	if ($line=~/mark/) {
		print $line;
	}
}
