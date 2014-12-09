#!/usr/bin/perl -w

# This script swap even and odd lines in STDIN and prints
# them out to STDOUT in a way appropriate to be used
# in a pipe (no array).

use strict;
use diagnostics;

my($line,$other_line);
while(!eof(STDIN)) {
	$line=<STDIN>;
	if(!eof(STDIN)) {
		$other_line=<STDIN>;
		print $other_line;
	}
	print $line;
}
