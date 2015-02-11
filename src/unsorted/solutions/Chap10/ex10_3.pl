# Exercise 10.3

# Sum three columns of numbers

while ($line = <>) {
	chomp($line);
	@cols = split(" ", $line);
	for ($i = 0; $i < 3; $i++) {
		$totals[$i] += $cols[$i];
	}
	&printrow(@cols);
}
&printunders;
&printrow(@totals);

sub printunders {

format UNDER =
------- ------- -------
.

	$~ = UNDER;
	write;
}

sub printrow {
	local ($x, $y, $z) = @_;
	format ROWS =
	@###.## @###.## @###.##
	$x, $y, $z
	.

	$~ = ROWS;
	write;
}
