# Exercise 2.3

# Print a number in binary notation

# Get a number from the user
print("Enter a positive integer (< 65536): ");
$num = <STDIN>;
chomp($num);

# Create a mask
$mask = 1 << 15;

# Loop through the bits from left to right
while ($mask > 0) {
	print((($mask & $num) > 0) ? 1 : 0);
	$mask = $mask >> 1;
}

print("\n");
