#!/usr/bin/perl

use strict;
use warnings;

my(@cntrs) = (0,0,0,0,0,0,0,0,0,0);
while (<>) {
	$cntrs[$_]++ foreach (/\d/g);
}
