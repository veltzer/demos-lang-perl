#!/usr/bin/perl

print "Enter number of elements: ";
chomp($num_els = <STDIN>);

$num1 = 1;
$answer .= "1 " if ($num_els > 0);
 
$num2 = 1;
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
