#!/usr/bin/perl -w

=head

=cut

use strict;
use warnings;

while (<>) {
	print "$&\n" while (/\b(\w)\w*\1\b/g);
}
