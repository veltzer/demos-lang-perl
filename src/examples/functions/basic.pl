#!/usr/bin/perl -w

=head

A simple demo of how to write functions in perl.
Notice that this function is without a prototype.

=cut

use strict;
use warnings;

sub sum {
	my($sum)=0;
	my($elem);
	foreach $elem (@_) {
		$sum+=$elem;
	}
	return($sum);
}

my($sum)=sum(4,5,6);
print "sum is $sum\n";
