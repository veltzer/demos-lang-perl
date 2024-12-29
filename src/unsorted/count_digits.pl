#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

my(@counters);
for(my($i)=0;$i<256;$i++) {
	$counters[$i]=0;
}
my($line);
while($line=<STDIN>) {
	chomp($line);
	for(my($j)=0;$j<length($line);$j++) {
		$counters[ord(substr($line,$j,1))]++;
	}
}
print join(",",@counters[ord('0')..ord('9')])."\n";
