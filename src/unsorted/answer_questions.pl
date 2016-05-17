#!/usr/bin/perl

my $line;
while($line=<STDIN>) {
	chomp($line);
	my ($x,$y)=split("\\+",$line);
	print "".$x+$y."\n";
}
