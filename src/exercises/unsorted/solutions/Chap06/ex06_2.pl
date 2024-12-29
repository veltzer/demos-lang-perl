# Exercise 6.2

=pod

=cut

use strict;
use warnings;

# Count the number of times each word occurs in a file

# Read the text
my(@input) = <STDIN>;
chomp(@input);

# Create a list of words
my(@words) = split(/ /, join(" ", @input));

# Count each word
my(%count);
foreach my $word (@words) {
	$count{$word}++;
}

# Print the list in sorted order
print "\n";
foreach my $word (sort(keys(%count))) {
	print("$word\t\t$count{$word}\n");
}
