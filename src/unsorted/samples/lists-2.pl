#!/usr/bin/perl -w

while ($line = <STDIN>) {
	chomp $line;
	foreach $digit (split("", $line)) {
		$counters[$digit]++;
	}
}

for ($i = 0; $i < 10; $i++) {
	print "$i: ", defined $counters[$i] ? $counters[$i] : 0, "\n";
}
