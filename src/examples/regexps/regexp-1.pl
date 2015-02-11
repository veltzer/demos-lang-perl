#!/usr/bin/perl -w

die "usage: $0 <pattern> [file1, file2...]\n" if (@ARGV < 1);

$pattern = shift;

while (<>) {
	print if (/$pattern/);
}
