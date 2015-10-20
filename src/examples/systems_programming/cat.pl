#!/usr/bin/perl -w

=head

Example of how to implemtn the cat(1) utility in perl using the <> (diamond)
operator.

Note that this example reads input both from STDIN and from the command line.

=cut

use strict;
use warnings;

while(<>) {
	print;
}
