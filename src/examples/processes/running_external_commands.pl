#!/usr/bin/perl

use strict;
use warnings;

my $ls_output = `ls /etc | wc -l`;
chomp($ls_output);
print "ls_output is $ls_output\n";

my $res=system("ls /etc | wc -l");
print "res is $res\n";

$res=system("ls /thisfolderdoesnotexist | wc -thisflagdoesnotexist");
print "res is $res\n";
