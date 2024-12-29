#!/usr/bin/perl

=pod

This function reverses an array like the built in 'reverse' function.

=cut

use strict;
use warnings;

sub rev {
	if(@_) {
		my($last)=pop(@_);
		return($last, rev(@_));
	} else {
		return();
	}
}

my @array=rev(1,2,3,4,5,6);
print "array is @array\n";
