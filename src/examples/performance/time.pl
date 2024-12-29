#!/usr/bin/perl

=head

This is a demo of perl's built-in 'time' function.
Remember that it only returns seconds since the epoch so it's
not good for performance work...

=cut

use strict;
use warnings;
 
my $t=time;
print "time is $t\n";
