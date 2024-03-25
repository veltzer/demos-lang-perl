#!/usr/bin/perl -w

=head

This is a test script that outputs some data to standard output and some data to standard
error

TODO:
- show how to redirect the standard streams to other places.

=cut

use strict;
use warnings;

# this is the same as 'print STDOUT'
print "Hello, World!\n";
print STDOUT "Hello STDOUT!\n";
print STDERR "Hello STDERR!\n";
exit(7);
