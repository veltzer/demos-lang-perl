#!/usr/bin/perl -w

use strict;
use warnings;

my $a=1;
my $b=2;

print "a is $a, b is $b\n";

($a, $b)=($b, $a);

print "a is $a, b is $b\n";
