#!/usr/bin/perl

=pod

This is a demo of the next statement in perl.

=cut

use strict;
use warnings;

my($i)=0;
while($i<10) {
	if($i==3) {
		$i++;
		next;
	}
	print 'i is '.$i."\n";
	$i++;
}
