#!/usr/bin/perl

use strict;
use warnings;

sub msum {
	my $i;
	my $j;
	my @res;
	for ($i=0; $i<$#{$_[0]}; ++$i) {
		for ($j=0; $j<$#{$_[0][$i]}; ++$j) {
			$res[$i][$j] = $_[0][$i][$j] + $_[1][$i][$j];
		}
	}
	return \@res;
}


my($m1) = [ [1,2,3], [4,5,6], [7,8,9] ];
my($m2) = [ [9,8,7], [6,5,4], [3,2,1] ];
my($m3) = msum($m1, $m2);
print "@{$m3->[0]}\n" ;
print "@{$m3->[1]}\n" ;
print "@{$m3->[2]}\n" ;



