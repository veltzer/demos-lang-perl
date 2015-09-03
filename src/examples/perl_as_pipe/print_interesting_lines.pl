#!/usr/bin/perl -w

=head

This script only print lines which match the regexp /mark/.

=cut

use strict;
use warnings;

while(<>) {
	if (/mark/) {
		print;
	}
}
