# Exercise 14.1

=pod

=cut

use strict;
use warnings;

# Use references to swap two scalars in a subroutine

my($x) = 5;
my($y) = 7;
print("\$x = $x\n\$y = $y\n\n");

print("Swapping...\n\n");
&swap(\$x, \$y);

print("\$x = $x\n\$y = $y\n\n");

sub swap {
	my($refx, $refy) = @_;
	my $temp;
	$temp = ${$refx};
	${$refx} = ${$refy};
	${$refy} = $temp;
}
