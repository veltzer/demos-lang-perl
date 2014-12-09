#!/usr/bin/perl -w

# do fibonacci using a recursive method

use strict;
use diagnostics;

sub fib {
	my($num)=@_;
	if($num==0) {
		return(1);
	} else {
		if($num==1) {
			return(1);
		} else {
			return(fib($num-1)+fib($num-2));
		}
	}
}

sub fib_2 {
	my($num)=@_;
	if($num==0) {
		return(1,0);
	} else {
		if($num==1) {
			return(1,1);
		} else {
			my($r_n_1,$r_n_2)=fib_2($num-1);
			return($r_n_1+$r_n_2,$r_n_1);
		}
	}
}

for(my($i)=0;$i<10;$i++) {
	my($f_n,$f_n_1)=fib_2($i);
	print $i." -> ".fib($i)." ".$f_n."\n";
}
