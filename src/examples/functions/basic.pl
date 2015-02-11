#!/usr/bin/perl -w

# A simple demo of how to write functions in perl

use strict;
use diagnostics;

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
