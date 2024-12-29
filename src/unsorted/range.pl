#!/usr/bin/perl

=pod

This script prints all the hidden files of a directory given
to it on the command line

=cut

use strict;
use warnings;

my($file,$off,$num)=@ARGV;

open(FILE,$file) || die("huh!?!");
seek(FILE,$off,0);
my($s);
read(FILE,$s,$num,0);
close(FILE) || die("duh!?!");
print $s."\n";
