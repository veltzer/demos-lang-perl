#!/usr/bin/perl -w

# This code uses the package Swap to swap two integers

use strict;
use diagnostics;

use Swap;

my($a)=5;
my($b)=6;
($a,$b)=Swap::swap_numbers($a,$b);

print "a is $a\n";
print "b is $b\n";
my($pi)=$Swap::PI;
print "PI is $pi\n";
