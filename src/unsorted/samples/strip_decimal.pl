#!/usr/bin/perl -w

chomp($str = <STDIN>);

while (chop($str) ne "." && $str ne "") {}

print $str, "\n";
