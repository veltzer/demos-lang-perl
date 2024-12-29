#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

my($data);
while (my($line) = <STDIN>) {
	chomp $line;
	$data .= $line;
}
print "$data\n";
