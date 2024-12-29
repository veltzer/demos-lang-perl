#!/usr/bin/perl

=pod

Demo use of sort with a "g" discrimation function 

=cut

use strict;
use warnings;

sub prefer_g {
	#print "a is $a\n";
	#print "b is $b\n";
	if(substr($a,0,1) eq "g")
		{ return 1; }
	else {
		if(substr($b,0,1) eq "g")
			{ return -1 }
		else { return $a cmp $b; }
	}
}

my(@l)=("gabriel","mark","yaron","gilad","hila","yossi","raffi");
#my(@r)=sort prefer_g @l;
my(@r)=sort { $a cmp $b } @l;
print "@r\n";
