#!/usr/bin/perl

=head

This is an egrep(1) implementation in perl using the <> (diamond) operator.

=cut

use strict;
use warnings;

my $pattern = shift;
while(<>) {
	print if (/$pattern/);
}
