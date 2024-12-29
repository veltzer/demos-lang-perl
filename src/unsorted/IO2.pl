#!/usr/bin/perl

use IO::File;

my($fh) = new IO::File("</etc/passwd") || die "Problem: $!\n";
$fh->close();

while (<$fh>) {
	print;
}
