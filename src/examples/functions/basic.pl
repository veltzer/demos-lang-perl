#!/usr/bin/perl

=head

A simple demo of how to write functions in perl.
Notice that this function is without a prototype.
This is variable number of arguments function. You can
pass 3 arguments to it, 4, 5, whatever...
All arguments are collected into '@_'.

=cut

use strict;
use warnings;

sub sum {
	my $sum=0;
	foreach my $elem (@_) {
		$sum+=$elem;
	}
	return $sum;
}

my($sum)=sum(4,5,6);
print "sum is [$sum]\n";
