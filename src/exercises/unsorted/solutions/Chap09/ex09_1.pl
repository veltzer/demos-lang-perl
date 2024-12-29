# Exercise 9.1

use strict;
use warnings;

# Pass a list of numbers into a subroutine
# Return the largest, smallest, and average values

# Get the values from the command line
my($max, $min, $ave) = &listproc(@ARGV);

print("@ARGV\n");

print("max = $max\nmin = $min\nave = $ave\n");

sub listproc {
	my($mx, $mn, $av, $count);
	$mx = $mn = $_[0];
	foreach my $item (@_) {
		if ($item > $mx) {
			$mx = $item;
		}
		if ($item < $mn) {
			$mn = $item;
		}
		$av += $item;
		$count++;
	}
	return ($mx, $mn, $av/$count);
}
