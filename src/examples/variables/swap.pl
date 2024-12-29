#!/usr/bin/perl -w

=head

This script shows the various ways in which you can swap the
values of two variables in perl.

=cut

use strict;
use warnings;

sub swap_numbers {
	my($a,$b)=@_;
	return($b,$a);
}

my($a)=5;
my($b)=6;

print "a is $a\n";
print "b is $b\n";

($a,$b)=swap_numbers($a,$b);

print "a is $a\n";
print "b is $b\n";

($a, $b)=($b, $a);

print "a is $a\n";
print "b is $b\n";
