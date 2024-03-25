# Exercise 4.2

# Convert an octal number to a decimal number

print("Enter a number in octal notation: ");
my($num) = <STDIN>;
chomp($num);

# Check to make sure it is an octal number
my($test) = $num;
while ($test ne "") {
	my($chr) = chop($test);
	die("Not octal number\n") if ($chr > 7);
}

my($i) = 0;
my($dec);
while ($num ne "") {
	$dec += chop($num) * (8**$i++);
}

print("$dec\n");
