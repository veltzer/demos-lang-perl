#!/usr/bin/perl -w -d

$a = 8;
$a = 9;

$matrix = [[1, 2], [4, 5]];

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
