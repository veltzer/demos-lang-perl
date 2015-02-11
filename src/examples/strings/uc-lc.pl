#!/usr/bin/perl

die "usage: $0 <-u | -l>\n" if (@ARGV != 1);

$mode = shift;
$mode eq "-l" || $mode eq "-u" || die "usage: $0 [u | -l]\n";

while ($line = <STDIN>) {
	print $mode eq "-u" ? uc($line) : lc($line);
}
