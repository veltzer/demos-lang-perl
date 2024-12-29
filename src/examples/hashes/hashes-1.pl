#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

my(%passwd);
while (my($line) = <STDIN>) {
	chomp;
	my($login, $name) = (split(":", $line))[0, 4];
	$passwd{$login} = $name;
}

while (my($login, $name) = each %passwd) {
	print "Login: $login, Name: $name\n";
}
