#!/usr/bin/perl -w

my $line;
while($line=<STDIN>) {
	if(!(<STDIN>)) {
		last;
	}
	print $line;
}
