#!/usr/bin/perl -w

=head

This is a general script to grep using perl to overcome some of the deficiencies
of grep(1) grepping.

=cut

use strict;
use diagnostics;

my($pattern)=$ARGV[0];
my($debug)=0;
my($print_filename)=1;

for(my($i)=1;$i<@ARGV;$i++) {
	my($filename)=$ARGV[$i];
	if($debug) {
		print 'filename is [$filename]\n';
	}
	open(FILE,$filename) || die 'Can't open file [$filename]: $!';
	my($line);
	while($line=<FILE>) {
		if($line=~$pattern) {
			if($print_filename) {
				print $filename.': ';
			}
			print $line; 
		}
	}
	close(FILE) || die('unable to close file [$filename]: $!');
}
