#!/usr/bin/perl -w

=head

This script demos slices and the order of assignment in slices

=cut

use strict;
use warnings;

my(@l)=(6,9);
@l[0,1]=@l[1,0];
print "@l\n";
