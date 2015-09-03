#!/usr/bin/perl -w

=head

This is an egrep built in perl using the <> (diamond) operator.
You can input data either from standard input or any number of
files on the command line.

=cut

use strict;
use warnings;
use diagnostics;

my $pattern = shift; # shift works on @ARGV by default

while (<>) {
	print if (/$pattern/);
}
