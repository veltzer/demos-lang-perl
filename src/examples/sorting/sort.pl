#!/usr/bin/perl -w

# demo use of sort with a "g" discrimation function 

use strict;
use diagnostics;

my(@l)=("gabriel","mark","yaron","gilad","hila","yossi","raffi");
my(@r)=sort {
	#print "a is $a\n";
	#print "b is $b\n";
	if(substr($a,0,1) eq "g")
		{ return 1; }
	else {
		if(substr($b,0,1) eq "g")
			{ return -1 }
		else { return $a cmp $b; }
	}
} @l;
print "@r\n";
