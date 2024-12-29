#!/usr/bin/perl -w

=head

This is an example of using the Benchmark module.

Notes:
- for performance work you have to use the ':hireswallclock' when importing.
otherwise you get second resolution.

References:
- http://perldoc.perl.org/Benchmark.html

=cut

use strict;
use warnings;
use Benchmark ':hireswallclock';
 
my $t0 = Benchmark->new;
sleep 1;
my $t1 = Benchmark->new;
my $td = timediff($t1, $t0);
print "the code took:",timestr($td),"\n";
