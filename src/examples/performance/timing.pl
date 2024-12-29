#!/usr/bin/perl

=head

This is an example of how to measure the execution time
of a piece of code in perl. You need to use Time::HiRes
since perl's basic time functions are have only second
resolution.

References:
- http://xmodulo.com/how-to-use-high-resolution-gettimeofday.html

=cut

use strict;
use warnings;
 
use Time::HiRes qw( usleep ualarm gettimeofday tv_interval );
 
my $t0 = [gettimeofday];
sleep 1;
my $elapsed = tv_interval ( $t0, [gettimeofday]);

print "time elapsed in seconds is $elapsed\n";
