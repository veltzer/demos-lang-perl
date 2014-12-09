#!/usr/bin/perl -w

# This script implements an RPM calculator with an arbitrary
# length stack

use strict;
use diagnostics;

my(@numbers);
my($line);
while($line=<STDIN>) {
	chomp($line);
	if($line eq "+") {
		my($result)=0;
		for(my($i)=0;$i<@numbers;$i++) {
			$result+=$numbers[$i];
		}
		@numbers=($result);
	}
	elsif($line eq "-") {
		my($result)=$numbers[0];
		for(my($i)=1;$i<@numbers;$i++) {
			$result-=$numbers[$i];
		}
		@numbers=($result);
	}
	elsif($line eq "*") {
		my($result)=1;
		for(my($i)=0;$i<@numbers;$i++) {
			$result*=$numbers[$i];
		}
		@numbers=($result);
	}
	elsif($line eq "/") {
		my($result)=$numbers[0];
		for(my($i)=1;$i<@numbers;$i++) {
			$result/=$numbers[$i];
		}
		@numbers=($result);
	}
	else {
		push(@numbers,$line);
	}
}
print "Result is @numbers\n";
