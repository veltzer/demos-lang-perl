#!/usr/bin/perl -w

=head

This example shows how to use perl's built-in 'system' function.

The return value of 'system' is the exit code of the child process
which may be examined in order to find out exactly what happened
to the child process (did it die on it's own, if so with what exit
code, was it killed by the os, if so with what signal, did a core
dump occur).

=cut

use strict;
use warnings;

my $res;

$res=system('ls');
print "res is $res\n";

print "==========================\n";

$res=system('ls thisdoesnotexist');
print "res is $res\n";
