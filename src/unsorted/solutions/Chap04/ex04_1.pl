# Exercise 4.1

# Convert a floating point string to an integer

# Get floating point value from user
print("Enter a floating point number with decimal: ");
$num  = <STDIN>;
chomp($num);

while ($num ne "") {
  $chr = chop($num);                                                                                            # Chop right-most chars until
  last if ($chr eq "."); # a decimal is found
}

die("No decimal point found\n") if ($num eq "");

print("$num\n");

