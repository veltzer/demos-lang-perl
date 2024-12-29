#!/usr/bin/perl

use strict;
use warnings;

my($matrix) = [[1, 2], [4, 5]];

my(%people);
$people{"Shay"} = {
	"Name" => "Shay",
	"Age" => "24",
	"Sex" => "Male",
};

$people{"Guy"} = {
	"Name" => "Guy",
	"Age" => "28",
	"Sex" => "Male",
};

print $matrix->[0][1],"\n";
