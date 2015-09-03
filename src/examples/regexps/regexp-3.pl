#!/usr/bin/perl -w

use strict;
use warnings;

while (<>) {
	print "$&\n" while (/\b(\w)\w*\1\b/g);
}
