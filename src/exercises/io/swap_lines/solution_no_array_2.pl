#!/usr/bin/perl -w

=head

This script swap even and odd lines in STDIN and prints
them out to STDOUT in a way appropriate to be used
in a pipe (no array).

=cut

use strict;
use warnings;

my($line,$other_line);
while($line=<STDIN>) {
	$line=<STDIN>;
	if(!eof(STDIN)) {
		$other_line=<STDIN>;
		print $other_line;
	}
	print $line;
}
