#!/usr/bin/perl -w

use strict;
use warnings;

my @myarray=(1,2,3,4,5);
my $myref=\@myarray;
print "myref is $myref\n";
print "$myref->[1]\n";
undef $myref;
