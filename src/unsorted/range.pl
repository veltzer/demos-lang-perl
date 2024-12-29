#!/usr/bin/perl

=pod

This script prints all the hidden files of a directory given
to it on the command line

=cut

use strict;
use warnings;

my($file,$off,$num)=@ARGV;

open(my $fh, "<", $file) || die("huh!?!");
seek($fh,$off,0);
my($s);
read($fh,$s,$num,0);
close($fh) || die("duh!?!");
print $s."\n";
