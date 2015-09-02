#!/usr/bin/perl -w

=head

This example demos the 'map' perl builtin function.
This function is part of the functional programming support
which is built into the perl language.
The 'uc' function in the example is perl's built-in upper case function.

=cut

use strict;
use warnings;
use diagnostics;

my(@l)=("mark", "yaron", "hila");
my(@r)=map( uc($_), @l);
print "@r\n";
