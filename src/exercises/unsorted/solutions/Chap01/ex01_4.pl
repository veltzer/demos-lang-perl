# Exercise 1.4

use strict;
use warnings;

# Read from standard input and write to standard output

my($line) = <STDIN>;
while ($line ne "") {
	print($line);
	$line = <STDIN>;
}
