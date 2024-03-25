#!/usr/bin/perl -w

=head

An example of writing a perl script to serve as a component of a pipe.
This one prints only the odd lines.

=cut

use strict;
use warnings;

while(<>) {
	if(!(<>)) {
		last;
	}
	print;
}
