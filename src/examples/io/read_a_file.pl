#!/usr/bin/perl

use warnings;

=pod

=cut

use strict;
use warnings;

use IO::File;

my($fh) = new IO::File("</etc/passwd") || die "Problem: $!\n";

while (<$fh>) {
	print;
}
$fh->close();
