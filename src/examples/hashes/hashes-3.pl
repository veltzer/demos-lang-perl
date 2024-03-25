#!/usr/bin/perl -w

=head

=cut

use strict;
use warnings;

my(%hash) = (
	John => 7,
	Mary => 3,
	Jane => 1,
	Moe => 10
);

my(@sorted) = sort { $hash{$a} <=> $hash{$b} } keys %hash;
print "@sorted\n";
