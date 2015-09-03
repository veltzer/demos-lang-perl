#!/usr/bin/perl -w

=head

Demo use of sort with a 'g' discrimation function 

=cut

use strict;
use warnings;

my(@l)=('gabriel','mark','yaron','gilad','hila','yossi','raffi');
my(@r)=sort {
	if(substr($a,0,1) eq 'g') {
		return 1;
	} elif(substr($b,0,1) eq 'g') {
		return -1;
	} else {
		return $a cmp $b;
	}
} @l;
print "@r\n";
