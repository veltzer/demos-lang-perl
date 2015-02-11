# Exercise 9.2

# Recursive subroutine to print a string in reverse order

print("$ARGV[0]\n");

&revstr($ARGV[0]);

sub revstr {
	local ($str) = ($_[0]);
	if ($str eq "") {
		print("\n");
		return;
	} else {
		print(chop($str));
		&revstr($str);
	}
}
