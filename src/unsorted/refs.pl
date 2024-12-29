#!/usr/bin/perl

=pod

An example of using references in perl.

=cut

use strict;
use warnings;

my($a)=7;
my($p)=\$a;
print "p is $p\n";
print "p is pointing to value $$p\n";
$a=9;
print "p is $p\n";
print "p is pointing to value $$p\n";
