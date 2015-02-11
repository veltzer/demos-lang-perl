#!/usr/bin/perl -w

use strict;
use diagnostics;

sub swap {
	my($pa,$pb)=@_;
	my(@tmp)=@$pa;
	@$pa=@$pb;
	@$pb=@tmp;
}

my(@a)=(1,2,3);
my(@b)=(4,5,6);

print "a is @a\n";
print "b is @b\n";
swap(\@a,\@b);
print "a is @a\n";
print "b is @b\n";
