#!/usr/bin/perl -w

=head

This is a demo of the next statement in perl.

=cut

use strict;
use diagnostics;

my($i)=0;
while($i<10) {
	if($i==3) {
		$i++;
		next;
	}
	print 'i is '.$i."\n";
	$i++;
}
