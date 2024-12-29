#!/usr/bin/perl 

use strict;
use warninigs;

my(%users);
open($fh, "<", "/etc/passwd") || die "unable to open /etc/passwd: $!\n";
while (<$fh>) {
	chomp;
	my ($user, @data) = split(":");
	$users{$user} = \@data;
}
close($fh);

foreach (keys %users) {
	print "User: $_, Details: ", $users{$_}[3],"\n";
}
