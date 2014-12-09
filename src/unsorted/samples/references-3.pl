#!/usr/bin/perl -w

open(PASSWD, "/etc/passwd") || die "can't open passwd: $!\n";
while (<PASSWD>) {
	chomp;
	($login, my @data) = split ":";
	$people{$login} = \@data;
}
close PASSWD;

while (($login, $datap) = each %people) {
	print "$login: @$datap\n";
}
