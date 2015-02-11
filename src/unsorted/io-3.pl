#!/usr/bin/perl -w

die "usage: $0 <file> <position> <length>\n" if (@ARGV != 3);

($file, $pos, $len) = @ARGV;

open(FILE, $file) || die "can't open $file: $!\n";
seek(FILE, $pos, 0);
die "can't read: $!\n" if (!defined read(FILE, $buf, $len));
print "$buf\n";
close FILE;
