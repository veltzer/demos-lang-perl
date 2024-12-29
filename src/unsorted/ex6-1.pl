#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

my(%people);
while (<STDIN>) {
	chomp;
	my($name, $phone) = split(",");
	$people{$name} = $phone;
}

print "$_ -> $people{$_}\n" foreach (sort keys %people);
