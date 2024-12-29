#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

my($line) = <STDIN>;
chomp $line;

for (my($i) = length($line) - 1; $i >= 0; $i--) {
	print substr($line, $i, 1);
}
print "\n";

# Later we can do:
chomp($line = <STDIN>);
print join("", reverse split("", $line)), "\n"
