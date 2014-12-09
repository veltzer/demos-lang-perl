#!/usr/bin/perl -w

# demo use of sort with a "g" discrimation function 

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

my($x)=sum(4,5,6);
print "x is $x\n";
