#!/usr/bin/perl -w -d

my($a )= 8;
my($a) = 9;

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
