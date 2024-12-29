#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

my($p) = shift @ARGV;
while (<>) { 
	print if (/$p/); 
}
