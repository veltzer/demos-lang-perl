#!/usr/bin/perl -w

die "usage: $0 <dir_name>\n" if (@ARGV != 1);

$dir = shift;

opendir(DIR, $dir) || die "can't open $dir: $!\n";
while ($f = readdir DIR) {
	print "$f\n" if (substr($f, 0, 1) eq ".");
}
closedir DIR;
