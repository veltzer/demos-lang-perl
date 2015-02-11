#!/usr/bin/perl -w

# This script demos slices and the order of assignment in slices

use strict;
use diagnostics;

my(@l)=(6,9);
@l[0,1]=@l[1,0];
print "@l\n";
