#!/usr/bin/perl -w

# demo use of map

use strict;
use diagnostics;

my(@l)=("mark","yaron","hila");
my(@r)=map( uc($_), @l);
print "@r\n";
