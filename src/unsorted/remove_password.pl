#!/usr/bin/perl -w

# this script removes the password field from /etc/passwd

use strict;
use diagnostics;

my($line);
while($line=<STDIN>) {
	chomp($line);
	my(@fields)=split(":",$line);
	$fields[1]="";
	print join(":",@fields)."\n";
}
