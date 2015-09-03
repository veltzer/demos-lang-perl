#!/usr/bin/perl -w

=head

This is a demo of the last statement in perl.

=cut

use strict;
use warnings;

my($i)=0;
while($i<10) {
	if($i==3) {
		last;
	}
	print 'i is '.$i."\n";
	$i++;
}
