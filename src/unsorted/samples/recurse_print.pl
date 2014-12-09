#!/usr/bin/perl -w

# This function prints an array in reverse order

use strict;
use diagnostics;

sub rev_print {
	if(@_) {
		my($last)=pop(@_);
		print $last."\n";
		rev_print(@_);
	}
}

my(@array)=(1,2,3,4,5,6);
rev_print(@array);
