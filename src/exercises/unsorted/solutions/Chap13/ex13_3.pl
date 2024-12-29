# Exercise 13.3

=pod

=cut

use strict;
use warnings;

# Print environment variables

foreach my $var (@ARGV) {
	if (defined $ENV{$var}) {
		print("$var: $ENV{$var}\n");
	} else {
		warn("Variable $var does not exist\n");
	}
}
