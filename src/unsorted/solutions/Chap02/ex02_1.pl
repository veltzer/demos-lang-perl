# Exercise 2.1

# Temperature conversion

# Get the temperature from the user
print("Enter a positive integer: ");
$temp = <STDIN>;
chomp($temp);

# Get the conversion type from the user
print("Convert to degrees F or C (F/C)? ");
$type = <STDIN>;
chomp($type);

if ($type eq "F") {
  $T = 9 * $temp / 5 + 32;                                                                                                            # Test for Fahrenheit
}
else {

  $T = 5 * ($temp - 32) / 9;                                                                                                            # Convert to Fahrenheit
                                                                                                            # Convert to Celsius
}

print("$T degrees $type\n");                                                                                                                # Print out temperature

