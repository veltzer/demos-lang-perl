#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

die "usage: $0 <file> <position> <length>\n" if (@ARGV != 3);

my($file, $pos, $len) = @ARGV;

open(my $fh, "<", $file) || die "can't open $file: $!\n";
seek($fh, $pos, 0);
my($buf);
die "can't read: $!\n" if (!defined read($fh, $buf, $len));
print "$buf\n";
close $fh;
