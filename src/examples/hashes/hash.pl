#!/usr/bin/perl

=head

This script stores all user names and their shells in a hash
table and prints it out

=cut

use strict;
use warnings;

my($line);
my(%hash);
while($line=<STDIN>) {
	chomp($line);
	my(@fields)=split(":",$line);
	my($user)=$fields[0];
	my($shell)=$fields[6];
	$hash{$user}=$shell;
}
while(my($key,$val)=each(%hash)) {
	print "$key -> $val\n";
}
