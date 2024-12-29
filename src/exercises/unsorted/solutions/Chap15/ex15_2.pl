# Exercise 15.2

use strict;
use warnings;

# Perform arithmetic operations using the integer package

my($x) = 7.83;
my($y) = 5.25;

print("\$x = ", $x, "\n");
print("\$y = ", $y, "\n\n");

print("Floating point:\n\n");
print("\$x * \$y = ", $x*$y, "\n");
print("\$x / \$y = ", $x/$y, "\n");
print("\$x + \$y = ", $x+$y, "\n");
print("\$x - \$y = ", $x-$y, "\n");
print("\$x % \$y = ", $x%$y, "\n\n");

use integer;

print("Integer:\n\n");
print("\$x * \$y = ", $x*$y, "\n");
print("\$x / \$y = ", $x/$y, "\n");
print("\$x + \$y = ", $x+$y, "\n");
print("\$x - \$y = ", $x-$y, "\n");
print("\$x % \$y = ", $x%$y, "\n");
