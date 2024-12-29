#!/usr/bin/perl

=pod

This is an egrep(1) implementation in perl using the <> (diamond) operator.

=cut

use strict;
use warnings;

my $pattern = shift @ARGV;
while(<ARGV>) {
	print if (/$pattern/);
}
