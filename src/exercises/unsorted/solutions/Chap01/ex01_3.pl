# Exercise 1.3

=pod

=cut

use strict;
use warnings;

# Read address label information from a file

my($last) = <STDIN>;
chomp($last);

my($first) = <STDIN>;
chomp($first);

my($addr) = <STDIN>;
chomp($addr);

my($city) = <STDIN>;
chomp($city);

my($state) = <STDIN>;
chomp($state);

my($zip) = <STDIN>;
chomp($zip);

print("$first $last\n");
print("$addr\n");
print("$city, $state $zip\n");

