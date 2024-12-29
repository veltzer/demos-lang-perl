#!/usr/bin/perl

=pod

This is an ASCII table demo

=cut

use strict;
use warnings;

my($line);
my($exit)=0;
do {
	print "1) enter a number and get the character\n";
	print "2) enter a string and get the numbers\n";
	print "3) see the ASCII table\n";
	print "4) exit\n";
	print "Enter your selection > ";
	$line=<STDIN>;
	chomp($line);
	if($line eq "1") {
		my($number);
		print "Please enter a number : ";
		$number=<STDIN>;
		chomp($number);
		print "The character of $number is ".chr($number)."\n";
	}
	if($line eq "2") {
		my($string);
		print "Please enter a string : ";
		$string=<STDIN>;
		chomp($string);
		my($i);
		for($i=0;$i<length($string);$i++) {
			my($char)=substr($string,$i,1);
			my($num)=ord($char);
			print $i." - ".$char." - ".$num."\n";
		}
	}
	if($line eq "3") {
		my($i);
		for($i=0;$i<256;$i++) {
			print $i." - ".chr($i)."\n";
		}
	}
	if($line eq "4") {
		$exit=1;
	}
}
while(!$exit);
