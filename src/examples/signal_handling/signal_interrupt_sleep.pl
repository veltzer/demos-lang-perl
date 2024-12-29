#!/usr/bin/perl

=pod

Demo of the interaction of signals and the 'sleep' built-in function.

This shows that sleep does not restart properly after a signal arrives.

=cut

use strict;
use warnings;

$SIG{INT} = sub {
	my $num=shift;
	print "num is [$num]\n";
	print "\$! is [$!]\n";
};

print "Before sleep\n";
sleep(10);
print "After sleep\n";
