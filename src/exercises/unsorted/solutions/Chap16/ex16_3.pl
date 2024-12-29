# Exercise 16.3

use strict;
use warnings;

# Test program for class box

require box;

my($mybox) = box->new(2, 4, 6);

print("Volume: ", $mybox->volume(), "\n");
