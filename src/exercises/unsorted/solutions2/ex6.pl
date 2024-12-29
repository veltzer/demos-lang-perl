#!/usr/bin/perl

use strict;
use warnings;

my($p) = shift @ARGV;
while (<>) { 
	print if (/$p/); 
}
