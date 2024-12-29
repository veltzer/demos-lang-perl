#!/usr/bin/perl 

use strict;
use warnings;

my(%users);
open(my $fh, "<", "/etc/passwd") || die "unable to open /etc/passwd: $!\n";
while (<$fh>) {
	chomp;
	my ($user, @data) = split(":");
	$users{$user} = \@data;
}
close($fh);

foreach (keys %users) {
	print "User: $_, Details: ", $users{$_}[3],"\n";
}
