#!/usr/bin/perl -w

use strict;
use diagnostics;

my(@array);
my($over)=0;

my($line);
while(!$over && ($line=<>)) {
	chomp($line);
	if($line eq "+") {
		my($x)=pop(@array);
		my($y)=pop(@array);
		push(@array,$x+$y);
		next;
	}
	if($line eq "-") {
		my($x)=pop(@array);
		my($y)=pop(@array);
		push(@array,$x-$y);
		next;
	}
	if($line eq "*") {
		my($x)=pop(@array);
		my($y)=pop(@array);
		push(@array,$x*$y);
		next;
	}
	if($line eq "/") {
		my($x)=pop(@array);
		my($y)=pop(@array);
		push(@array,$x/$y);
		next;
	}
	if($line eq "=") {
		$over=1;
		next;
	}
	push(@array,$line);
}
# should we print an error if the size of the array is not 1 ?
print "@array\n";
