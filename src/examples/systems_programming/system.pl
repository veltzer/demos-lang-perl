#!/usr/bin/perl -w

=head

This is an exmple of how to run a child process
and react to it's output...

=cut

use strict;
use warnings;

my($output)=`./system_script.pl`;
if($output eq "success\n") {
	print "doing success work\n";
} else {
	print "doing failure work\n";
}
