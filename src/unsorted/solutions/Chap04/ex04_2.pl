# Exercise 4.2

# Convert an octal number to a decimal number

print("Enter a number in octal notation: ");
$num = <STDIN>;
chomp($num);

# Check to make sure it is an octal number
$test = $num;
while ($test ne "") {
	$chr = chop($test);
	die("Not octal number\n") if ($chr > 7);
}

$i = 0;
while ($num ne "") {
	$dec += chop($num) * (8**$i++);
}

print("$dec\n");
