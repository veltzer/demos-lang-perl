#!/usr/bin/perl -w

while ($line = <STDIN>) {
	chomp;
	($login, $name) = (split(":", $line))[0, 4];
	$passwd{$login} = $name;
}

while (($login, $name) = each %passwd) {
	print "Login: $login, Name: $name\n";
}
