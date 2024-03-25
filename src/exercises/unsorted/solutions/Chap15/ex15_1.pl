# Exercise 15.1

# Create subroutines in two different packages,
# one of which returns a string in upper case,
# the other which returns a string in lower case.

package upper;

sub printstr {
	return sprintf("%s", "\U$_[0]\E");
}

package lower;

sub printstr {
	return sprintf("%s", "\L$_[0]\E");
}

package main;
my($str) = join(" ", @ARGV);

print("$str\n");
print(&upper::printstr($str), "\n");
print(&lower::printstr($str), "\n");



