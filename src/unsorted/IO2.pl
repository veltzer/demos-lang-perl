#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

use IO::File;

my($fh) = new IO::File("</etc/passwd") || die "Problem: $!\n";
$fh->close();

while (<$fh>) {
	print;
}
