#!/usr/bin/perl

$counters[$i++] = 0 while ($i < 10);

while ($line = <STDIN>) {
	chomp $line;

	foreach $digit (split("", $line)) {
		$counters[$digit]++;
	}
}

for ($i = 0; $i < 10; $i++) {
	print "$i: $counters[$i]\n";
}
