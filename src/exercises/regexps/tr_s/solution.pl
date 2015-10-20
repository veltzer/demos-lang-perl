#!/usr/bin/perl -w

=head

This a solution to the 'tr -s' exercise.

=cut

use strict;
use warnings;

while (<>) {
	s/(\s)\s+/$1/g;
	print;
}
