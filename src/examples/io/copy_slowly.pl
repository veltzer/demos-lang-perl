#!/usr/bin/perl

=pod

This program copies to the screen any input given to it, both STDIN
and command line.

You can use this script for showing how to retrieve info from /proc.

=cut

use strict;
use warnings;

while(<>) {
	print;
	sleep 1;
}
