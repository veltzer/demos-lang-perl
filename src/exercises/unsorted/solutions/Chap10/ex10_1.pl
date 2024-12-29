# Exercise 10.1

use strict;
use warnings;

# Sum three columns of numbers

my(@totals);
while (my($line) = <>) {
	chomp($line);
	my(@cols) = split(" ", $line);
	for (my($i) = 0; $i < 3; $i++) {
		$totals[$i] += $cols[$i];
	}
	printf("%7.2f %7.2f %7.2f\n", @cols);
}
print("------- ------- -------\n");
printf("%7.2f %7.2f %7.2f\n", @totals);

