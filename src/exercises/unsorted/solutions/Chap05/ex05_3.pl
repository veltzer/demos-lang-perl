# Exercise 5.3

use strict;
use warnings;

# List words in alphabetical order

my(@file) = <STDIN>;
chop(@file);

my(@words) = sort(split(/ /, join(" ", @file)));

my($word1) = $words[0];
print("$word1\n");
my($i) = 1;
while ($i < @words) {
	if ($words[$i] ne $words[$i - 1]) {
		print("$words[$i]\n");
	}
	$i++;
}
