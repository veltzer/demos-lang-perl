#!/usr/bin/perl -w

# this script has a function to swap two numbers

use strict;
use diagnostics;

sub swap_numbers {
	my($a,$b)=@_;
	return($b,$a);
}

my($a)=5;
my($b)=6;
($a,$b)=swap_numbers($a,$b);

print "a is $a\n";
print "b is $b\n";
