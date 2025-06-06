# Exercise 3.3

=pod

=cut

use strict;
use warnings;

# Generate a Fibonacci series

# Ask the user for a number
print("How many numbers of the Fibonacci series? ");
my($num) = <STDIN>;
chop($num);

die("Must be a positive integer\n") unless ($num > 0);

if ($num == 1) {
	print("1\n");
} else {
	my($n1, $n2, $n3);
	print("1, 1");
	$n1 = $n2 = 1;
	$num -= 2;
	while ($num-- > 0) {
		$n3 = $n1 + $n2;
		print(", $n3");
		$n1 = $n2;
		$n2 = $n3;
	}
	print("\n");
}
