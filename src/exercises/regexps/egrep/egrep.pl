#!/usr/bin/perl

=pod

This is an egrep built in perl using the <> (diamond) operator.
You can input data either from standard input or any number of
files on the command line.

=cut

use strict;
use warnings;
use diagnostics;

my $pattern = shift; # shift works on @ARGV by default

# the diamond (<>) reads from all files on the command line or stdin into $_
while (<>) {
	# matching is vs $_ by default and so is print
	print if (/$pattern/);
}
