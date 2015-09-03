#!/usr/bin/perl -w

=head

This code uses the package Swap to swap two integers

=cut

use strict;
use warnings;

my($dir)=$ARGV[0];

open(IN,"ls -l $dir |") || die("unable to open");
my($line);
while($line=<IN>) {
	chomp($line);
	if($line!~/^total/) {
		my($perm,$filename)=(split(/\s+/,$line))[0,7];
		if(substr($perm,1,1) eq "r") {
			print $filename."\n";
		}
	}
}

close(IN) || die("unable to close");
