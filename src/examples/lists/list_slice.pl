#!/usr/bin/perl

=pod

This example shows that you can slice a list in perl

=cut

use strict;
use warnings;

my @myarray=(1, 2, 3, 4, 5)[3,1];

print "@myarray\n";
