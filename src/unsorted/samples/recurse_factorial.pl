#!/usr/bin/perl -w

# demo use of sort with a "g" discrimation function 

use strict;
use diagnostics;

sub factorial {
	my($num)=@_;
	if($num==0) {
		return(1);
	} else {
		return($num*factorial($num-1));
	}
}

my($x)=factorial(10);
print "x is $x\n";
