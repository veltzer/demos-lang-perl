# Exercise 6.1

=pod

=cut

use strict;
use warnings;

# Phone directory

# Load the directory from standard input
my(@input) = <STDIN>;
chomp(@input);

# Create the directory as a hash
my(%phone) = split(/,/, join(",", @input));

foreach my $name (sort(keys(%phone))) {
	print("$name\t$phone{$name}\n");
}
