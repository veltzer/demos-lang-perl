#!/usr/bin/perl 

my(%users);
open(PASSWD, "/etc/passwd") || die "unable to open /etc/passwd: $!\n";
while (<PASSWD>) {
	chomp;
	my ($user, @data) = split(":");
	$users{$user} = \@data;
}
close(PASSWD);

foreach (keys %users) {
	print "User: $_, Details: ", $users{$_}[3],"\n";
}
