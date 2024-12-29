#!/usr/bin/perl

=pod

This example shows how to pipe data to/from a child
process from/to our process.

Notes:
- The version of a variable ($fh) is better than the
version with the glob (IN).
- If we want to both write to the child process and read
from the child process we will either need two threads
or use select/poll/epoll. This will also require creating
the two pipes involved on our own.

=cut

use strict;
use warnings;

open(IN, 'ls |') || die("unable to open [$!]");
my($line);
while($line=<IN>) {
	chomp($line);
	print "got [$line]\n";
}
close(IN) || die("unable to close [$!]");

print "============================\n";

my $fh;
open($fh, 'ls |') || die("unable to open [$!]");
while($line=<$fh>) {
	chomp($line);
	print "got [$line]\n";
}
close($fh) || die("unable to close [$!]");

print "============================\n";
open($fh, '| bc') || die("unable to open [$!]");
print $fh "2+2\n";
print $fh "3+3\n";
close($fh) || die("unable to close [$!]");
