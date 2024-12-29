#!/usr/bin/perl

=pod

This script implements an RPM calculator with a 2 slot stack

=cut

use strict;
use warnings;

my($one,$two);
my($line);
while($line=<STDIN>) {
	chomp($line);
	if($line eq "+") {
		$one=$one+$two;
		$two=undef;
	}
	elsif($line eq "-") {
		$one=$one-$two;
		$two=undef;
	}
	elsif($line eq "*") {
		$one=$one*$two;
		$two=undef;
	}
	elsif($line eq "/") {
		$one=$one/$two;
		$two=undef;
	}
	elsif(defined($one)) {
		$two=$line;
	}
	else {
		$one=$line;
	}
}
print "Result is $one\n";
