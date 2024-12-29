#!/usr/bin/perl

=pod

This script implements an RPM calculator with a 2 slot stack
using eval to shorten the code

=cut

use strict;
use warnings;

my($one,$two);
my($line);
while($line=<STDIN>) {
	chomp($line);
	if($line eq "+" || $line eq "-" || $line eq "*" || $line eq "/") {
		$one=eval("$one $line $two");
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
