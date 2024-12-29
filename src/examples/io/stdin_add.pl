#!/usr/bin/perl

=pod

This example shows how to input strings from STDIN.

=cut

use strict;
use warnings;

my $a = <STDIN>;
my $b = <STDIN>;

chomp($a);
chomp($b);

my $c = $a+$b;

print "$a + $b is $c\n";
