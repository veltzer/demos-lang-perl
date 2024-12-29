# Exercise 9.3

=pod

=cut

use strict;
use warnings;

# Demonstrate BEGIN, END, and AUTOLOAD subroutines

&xyz; # Subroutine doesn't exist

BEGIN {
	# print("Program starting\n");
}

my($AUTOLOAD);
AUTOLOAD {
	die("$AUTOLOAD doesn\'t exist!\n");
}

END {
	print("Program ending\n");
}
