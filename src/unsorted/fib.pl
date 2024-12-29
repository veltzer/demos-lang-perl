#!/usr/bin/perl

use strict;
use warnings;

print "Enter number of elements: ";
chomp(my($num_els) = <STDIN>);

my($answer, $sum);
my($num1) = 1;
$answer .= "1 " if ($num_els > 0);
 
my($num2) = 1;
$answer .= "1 " if ($num_els > 1);

$num_els -= 2;

while ($num_els-- > 0) {
	$sum = $num1 + $num2;
	$answer .= "$sum ";
	$num1 = $num2;
	$num2 = $sum;
}

chop $answer;
print "Answer: [$answer]\n";
