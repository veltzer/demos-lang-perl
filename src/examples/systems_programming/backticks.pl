#!/usr/bin/perl

=pod

Demo of how to use backtics in perl.

Notes:
- the backticks feature is context sensitive. If you retrieve its
result into an array then you will get an array with lines of output.
If you retrieve the results into a scalar then you will get all the
output in one long string.
- notice the third example - if you put the output of backticks into
my with parenthesis then you will *only get the first line* of the output...

=cut

use strict;
use warnings;

my(@output1)=`ls`;
print @output1;

print "==========================\n";

my $output2=`ls`;
print $output2;

print "==========================\n";

my($output3)=`ls`;
print $output3;
