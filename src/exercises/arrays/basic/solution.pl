#!/usr/bin/perl

use strict;
use warnings;

my @numbers=<STDIN>;

my $sigma_x=0.0;
my $sigma_x2=0.0;
foreach my $number (@numbers) {
	chomp($number);
	$number+=0.0;
	$sigma_x+=$number;
	$sigma_x2+=$number**2;
}

my $num=scalar(@numbers)+0.0;
my $mean = $sigma_x/$num;
my $stddev= $sigma_x2/$num - $mean**2;

my @sorted = sort @numbers;
my $median;
if ($num % 2) {
	$median = $numbers[$num/2];
} else {
	$median = ($numbers[$num/2]+$numbers[$num/2-1])/2;
}

print "mean is $mean\n";
print "stddev is $stddev\n";
print "median is $median\n";
