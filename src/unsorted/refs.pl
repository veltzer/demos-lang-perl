#!/usr/bin/perl -w

use strict;
use diagnostics;

my($a)=7;
my($p)=\$a;
print "p is $p\n";
print "p is pointing to value $$p\n";
$a=9;
print "p is $p\n";
print "p is pointing to value $$p\n";
