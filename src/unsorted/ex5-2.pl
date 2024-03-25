#!/usr/bin/perl

my(@counters, $i);
$counters[$i++] = 0 while ($i < 10);

while (my($line) = <STDIN>) {
	chomp $line;

	foreach my($digit) (split("", $line)) {
		$counters[$digit]++;
	}
}

for (my($i) = 0; $i < 10; $i++) {
	print "$i: $counters[$i]\n";
}
