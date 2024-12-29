# Exercise 8.3

use strict;
use warnings;

# Strip numbers from a file and count the number of times each digit occurs

my(@file) = <>;
chomp(@file);
my($string) = join("", @file);
$string =~ tr/0-9//cd;
my(@nums) = split(//, $string);

my(@count);
foreach my $num (@nums) {
	$count[$num]++;
}

for (my($num) = 0; $num <= 9; $num++) {
	print("$num: $count[$num]\n");
}
