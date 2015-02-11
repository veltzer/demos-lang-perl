#!/usr/bin/perl -w

=head

This is an example of doing functional style reduce using perl

=cut

use strict;
use diagnostics;
use List::Util qw(reduce);

my(@a) = (1..10);
my($sum) = reduce { $a + $b } @a; 
print "sum is $sum\n";
