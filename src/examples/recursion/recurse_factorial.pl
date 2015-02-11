#!/usr/bin/perl -w

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

my($result)=factorial(10);
print "factorial(10) is $result\n";
