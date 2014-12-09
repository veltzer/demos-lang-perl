# Exercise 15.3

# Test string.pm

require string;

$str = "axesimogub";

print("$str\n");

print(&string::revstr($str),        "\n");
print(&string::sortstr($str),       "\n");
print(&string::shiftpushstr($str),  "\n");
print(&string::popunshiftstr($str), "\n");

