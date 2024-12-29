#!/usr/bin/perl

=pod

This is an exmple of an array with mixed data and array refs.

=cut

use strict;
use warnings;

my @arr = ( 6, 8, 10);

my @full = ('amsterdam' , \@arr, 'london', \@arr, 'paris');

print "full is @full\n";
