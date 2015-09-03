#!/usr/bin/perl -w

=head

This script has a function to swap two numbers.

=cut

use strict;
use warnings;

sub swap_numbers {
	my($a,$b)=@_;
	return($b,$a);
}

my($a)=5;
my($b)=6;
($a,$b)=swap_numbers($a,$b);

print "a is $a\n";
print "b is $b\n";
