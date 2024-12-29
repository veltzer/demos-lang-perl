#!/usr/bin/perl

use strict;
use warnings;

my($str);
chomp($str = <STDIN>);

while (chop($str) ne "." && $str ne "") {}

print $str, "\n";
