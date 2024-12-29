#!/usr/bin/perl

use strict;
use warnings;

while (<>) {
	s/\d+/length $&/ge;
	print;
}
