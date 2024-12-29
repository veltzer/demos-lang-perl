# Exercise 10.3

=pod

=cut

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
	&printrow(@cols);
}
&printrow(@totals);

sub printrow {
	my ($x, $y, $z) = @_;
	# format ROWS =
	# @###.## @###.## @###.##
	# $x, $y, $z
	# 	.
	# 
	# $~ = ROWS;
	write;
}
