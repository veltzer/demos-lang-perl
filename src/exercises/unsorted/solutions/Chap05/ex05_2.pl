# Exercise 5.2

# Count the number of digits in a test file

# Read the input
my(@file) = <STDIN>;
chomp(@file);

# Create list from file
my(@nums) = split(//, join("", @file));

print join " ", @nums; #DEBUG

# Get total for each digit

# Initialize a list to all zeroes
my(@count);
for (my($i) = 0; $i < 10; $i++) {
	$count[$i] = 0;
}

# Add 'em up
foreach my($num) (@nums) {
	$count[$num]++;
}
print "\n";
# Print the digit totals
for (my($i) = 0; $i < 10; $i++) {
	print("$i: $count[$i]\n");
}
