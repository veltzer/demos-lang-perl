#!/usr/bin/perl -w

use strict;
use warnings;
use diagnostics;

my $fh;
open($fh, '| bc') || die("problem with open [$!]");

for(my($i)=0;$i<10;$i++) {
	print $fh "$i+$i\n";
}
close($fh) || die("problem with close [$!]");
