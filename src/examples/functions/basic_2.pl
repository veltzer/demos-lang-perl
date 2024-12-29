#!/usr/bin/perl

=pod

A simple demo of how to write functions in perl.
Notice that this function is without a prototype.
This is variable number of arguments function. You can
pass 3 arguments to it, 4, 5, whatever...
All arguments are collected into '@_'.

=cut

use strict;
use warnings;

sub add {
	if(scalar(@_)!=2) {
		die("No add for you!");
	}
	my($a,$b)=@_;
	return $a+$b;
}

my($sum)=add(4,5,6);
print "sum is [$sum]\n";
