#!/usr/bin/perl

use strict;
use warnings;

my(@a) = (1, 2);
my(@b) = (3, 4);

swap(\@a, \@b);

print "[@a], [@b]\n";

# The readable version
sub swap
{
	my ($p1, $p2) = @_;
	my @temp = @$p1;
	@$p1 = @$p2;
	@$p2 = @temp;
}

# The less-readable version
sub swap2
{
	my @temp = @{ $_[0] };
	@{ $_[0] } = @{ $_[1] };
	@{ $_[1] } = @temp;
}

# both of these versions a bit slow since they create a temp array.
# its better to iterate and swap each entry seperately.
