#!/usr/bin/perl

use strict;
use warnings;

my $fh;
open($fh, "|", 'ls -l /etc | wc -l |') || die("problem with open [$!]");

my @lines=<$fh>;
chomp(@lines);
close($fh) || die("problem with close [$!]");

print "lines is @lines\n";
