#!/usr/bin/perl -w

my($data);
while (my($line) = <STDIN>) {
	chomp $line;
	$data .= $line;
}
print "$data\n";
