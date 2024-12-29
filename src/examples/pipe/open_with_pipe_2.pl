#!/usr/bin/perl -w

use strict;
use warnings;
use diagnostics;

my $fh;
open($fh, 'ls -l /etc | wc -l |') || die("problem with open [$!]");

my @lines=<$fh>;
chomp(@lines);
close($fh) || die("problem with close [$!]");

print "lines is @lines\n";
