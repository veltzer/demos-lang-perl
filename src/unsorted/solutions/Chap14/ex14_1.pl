# Exercise 14.1

# Use references to swap two scalars in a subroutine

$x = 5;
$y = 7;
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
