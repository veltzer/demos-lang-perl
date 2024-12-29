# Exercise 2.2

=pod

=cut

use strict;
use warnings;

# Sort two strings

# Get the first string
print("Enter first string: ");
my($string1) = <STDIN>;

# Get the second string
print("Enter second string: ");
my($string2) = <STDIN>;

# Test and print the strings in sorted order
# Note: newline character left on the end of the strings

print(($string1 ge $string2) ? $string2 : $string1);
print(($string1 lt $string2) ? $string2 : $string1);

