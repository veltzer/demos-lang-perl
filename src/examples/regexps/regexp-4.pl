#!/usr/bin/perl -w

=head

=cut

use strict;
use warnings;

while (<>) {
	s/(\s)\s+/$1/g;
	print;
}
