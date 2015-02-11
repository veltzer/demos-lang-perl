#!/usr/bin/perl -w

# demo use of sort with a "g" discrimation function 

use strict;
use diagnostics;

my($output)=`./stupid_script.pl`;
if($output eq "success\n") {
	print "doing success work\n";
} else {
	print "doing failure work\n";
}
