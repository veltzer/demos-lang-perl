#!/usr/bin/perl -w

=head

This script removes the password field from /etc/passwd

=cut

use strict;
use warnings;

my($line);
while($line=<STDIN>) {
	chomp($line);
	my(@fields)=split(":",$line);
	$fields[1]="";
	print join(":",@fields)."\n";
}
