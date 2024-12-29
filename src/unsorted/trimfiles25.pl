#!/usr/bin/perl

=pod

This script trims all lines in files given to it to 5 characters 

=cut

use strict;
use warnings;

=head comment

my($line);
while($line=<>) {
	chomp($line);
	print substr($line,0,5)."\n";
}

=cut

if(@ARGV>0) {
	foreach my $file (@ARGV) {
		open(my $fh, "<", $file) || die("huh!?!");
		while(my $line=<$fh>) {
			chomp($line);
			print substr($line,0,5)."\n";
		}
		close($fh) || die("duh!?!");
	}
} else {
	while(my $line=<STDIN>) {
		chomp($line);
		print substr($line,0,5)."\n";
	}
}
