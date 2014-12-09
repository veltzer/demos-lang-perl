#!/usr/bin/perl -w

print "@ARGV\n";
@ARGV = ($ARGV[0],@ARGV[2..$#ARGV]);
print "@ARGV\n";
