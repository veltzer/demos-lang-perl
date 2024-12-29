#!/usr/bin/perl -w

=head

This code uses the package Swap to swap two integers.

=cut

use strict;
use warnings;

use Data::Swap;

my($a)=5;
my($b)=6;
($a,$b)=Swap::swap_numbers($a,$b);

print "a is $a\n";
print "b is $b\n";
