#!/usr/bin/perl -w

my $pattern = shift @ARGV;
while(<ARGV>) {
	print if (/$pattern/);
}
