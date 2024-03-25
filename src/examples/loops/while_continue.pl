#!/usr/bin/perl -w

=head

This is a demo of the continue statement in perl.

=cut

use strict;
use warnings;

my($i)=0;
while($i<10) {
	$i++;
} continue {
	print 'i is '.$i."\n"
}
