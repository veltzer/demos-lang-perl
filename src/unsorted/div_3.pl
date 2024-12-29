#!/usr/bin/perl

=pod

This script prints out all numbers in the input (<>)
which are multiples of 3.

=cut

use strict;
use warnings;

my($line);
while($line=<>) {
	chomp($line);
	# option 1 - shortest
	#print map("$_\n",grep($_%3==0,$line=~/\d+/g));
	# option 2 - with array and with /g
	#my(@list)=$line=~/\d+/g;
	#my($number);
	#foreach $number (@list) {
	#	if($number%3==0) {
	#		print $number."\n";
	#	}
	#}
	# option 3 - without array at all
	while($line=~/\d+/g) {
		my($number)=$&;
		if($number%3==0) {
			print $number."\n";
		}
	}
}
