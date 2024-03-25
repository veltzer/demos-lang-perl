#!/usr/bin/perl

=head

=cut

use strict;
use warnings;

use IO::File;

my($fh) = new IO::File("</etc/passwd") || die "Problem: $!\n";

while (<$fh>) {
	print;
}
$fh->close();
