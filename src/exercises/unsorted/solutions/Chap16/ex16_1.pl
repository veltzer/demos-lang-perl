# Exercise 16.1

=pod

=cut

use strict;
use warnings;

# Implement and test a rectangle class

require rectangle;

my($square) = rectangle->new(6);
print("Area = ", $square->area(), "\n");

$square->height(4);
$square->width(4);
print("Area = ", $square->area(), "\n");


