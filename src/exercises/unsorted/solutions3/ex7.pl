#!/usr/bin/perl

use strict;
use warnings;

if ($#ARGV<2) {
	print "usgae: ex7-1.pl <block-size> <file-name> <record-number> [value-to-insert]\n";
	exit;
}
my($size, $filename, $record, $value) = @ARGV;

my($loc) = $record*$size;

if (defined($value)) {
	if (length($value)!=$size) {
		print "value ($value) must be $size bytes long\n";
		exit;
	}
	print "writing $value to $filename record $record\n";
	open($fh, ">>", $filename) || die "can not open file $filename: $!\n";
	seek($fh, $loc, 0) || die "can not seek file $filename to $loc: $!\n";
	print tell($fh)." $loc";
	print("a"x($loc-tell($fh)) if (tell($fh)<$loc);
	print($fh $value);
	close($fh);
} else {
	print "reading record $record from $filename\n";
	open($fh, "<", $filename) || die "can not open file $filename: $!\n";
	seek($fh, $loc, 0) || die "can not seek file $filename to $loc: $!\n";
	read($fh, $value, $size)==$size || die "can not read";
	print "DATA:".$value."\n";
	close($fh);
}

