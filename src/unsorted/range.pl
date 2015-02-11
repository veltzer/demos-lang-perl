#!/usr/bin/perl -w

# this script prints all the hidden files of a directory given
# to it on the command line

use strict;
use diagnostics;

my($file,$off,$num)=@ARGV;

open(FILE,$file) || die("huh!?!");
seek(FILE,$off,0);
my($s);
read(FILE,$s,$num,0);
close(FILE) || die("duh!?!");
print $s."\n";
