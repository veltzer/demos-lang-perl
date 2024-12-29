# Exercise 9.2

=pod

=cut

use strict;
use warnings;

# Recursive subroutine to print a string in reverse order

print("$ARGV[0]\n");

&revstr($ARGV[0]);

sub revstr {
	my ($str) = ($_[0]);
	if ($str eq "") {
		print("\n");
		return;
	} else {
		print(chop($str));
		&revstr($str);
	}
}
