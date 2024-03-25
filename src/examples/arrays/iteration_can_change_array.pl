#!/usr/bin/perl -w

=head

This example shows that $var in an array foreach loop
is actually an alias to the value in the array and not
a copy.

=cut

use strict;
use warnings;

my @numbers=(1, 2, 3, 4, 5);

print "numbers is @numbers\n";
foreach my $num (@numbers) {
	#$num++;
	my $copy=$num;
	$copy++;
}
print "numbers is @numbers\n";
