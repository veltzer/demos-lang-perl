#!/usr/bin/perl -w

while ($line = <STDIN>) {
	chomp $line;
	$data .= $line;
}
print "$data\n";
