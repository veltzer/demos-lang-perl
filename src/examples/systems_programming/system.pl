#!/usr/bin/perl -w

=head

Demo use of sort with a "g" discrimation function 

=cut

use strict;
use warnings;

my($output)=`./stupid_script.pl`;
if($output eq "success\n") {
	print "doing success work\n";
} else {
	print "doing failure work\n";
}
