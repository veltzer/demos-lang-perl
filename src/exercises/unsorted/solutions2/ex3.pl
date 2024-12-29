#!/usr/bin/perl

use strict;
use warnings;

my($l) = <>;
chomp $l;

#for ($i=length($l)-1; $i >=0 ; $i--) {
for (my($i)=0;$i<length($l);$i++) {
	print substr($l,-$i-1,1);
}

print "\n";
