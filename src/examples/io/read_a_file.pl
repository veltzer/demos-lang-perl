#!/usr/bin/perl

use IO::File;

$fh = new IO::File("</etc/passwd") || die "Problem: $!\n";

while (<$fh>) {
	print;
}
$fh->close();
