#!/usr/bin/perl -w

my @arr = ( 6, 8, 10);

my @full = ('amsterdam' , \@arr, 'london', \@arr, 'paris');

print "full is @full\n";
