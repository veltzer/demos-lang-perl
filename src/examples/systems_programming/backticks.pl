#!/usr/bin/perl -w

=head

Demo of how to use backtics in perl.

Notes:
- the backticks feature is context sensitive. If you retrieve its
result into an array then you will get an array with lines of output.
If you retrieve the results into a scalar then you will get all the
output in one long string.

=cut

use strict;
use warnings;

my(@output)=`ps -ef`;
print @output;
