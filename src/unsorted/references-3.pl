#!/usr/bin/perl -w

my(%people);
open(PASSWD, "/etc/passwd") || die "can't open passwd: $!\n";
while (<PASSWD>) {
	chomp;
	my($login, @data) = split ":";
	$people{$login} = \@data;
}
close PASSWD;

while (my($login, $datap) = each %people) {
	print "$login: @$datap\n";
}
