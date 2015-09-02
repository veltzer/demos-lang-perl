#!/usr/bin/perl -w

=head

This is an example of doing functional style reduce using perl.
Notice that unlike the 'map' function the 'reduce' function is not
built-in but rather module based (the 'List::Util' module in this case).

=cut

use strict;
use warnings;
use diagnostics;

use List::Util qw(reduce);

my(@a) = (1..10);
my($sum) = reduce { $a + $b } @a; 
print "sum is $sum\n";
