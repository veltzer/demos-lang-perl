#!/usr/bin/perl

=pod

This example show how to use perl's built in 'rand' function.

Notes:
- if you initialize the random number generator with the same seed
each time you will get the exact same random series.
- if you do not call 'srand' then it will be called implictly with
the first activation of 'rand' and will seed the random number
generator from the operating system (/dev/urandom).
This means that you will get different results for each run.
- if you call 'srand' without argument it seeds from /dev/urandom.
- calling 'srand' without arguments several times is a mistake since
the random data it will get from /dev/urandom will actually be of
less enthropic value.

=cut

use strict;
use warnings;

srand(0);

foreach my $i (0..10) {
	my($random)=rand(1);
	print "got $random\n";
}
