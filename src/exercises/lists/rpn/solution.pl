#!/usr/bin/perl -w

=head

This is a solution to the RPN calculator exercise.

=cut

use strict;
use warnings;
use autodie;

my @array;
while(defined(my $line=readline(STDIN))) {
	chomp($line);
	if($line eq '+') {
		my($x)=pop(@array);
		my($y)=pop(@array);
		push(@array,$x+$y);
		next;
	}
	if($line eq '-') {
		my($x)=pop(@array);
		my($y)=pop(@array);
		push(@array,$x-$y);
		next;
	}
	if($line eq '*') {
		my($x)=pop(@array);
		my($y)=pop(@array);
		push(@array,$x*$y);
		next;
	}
	if($line eq '/') {
		my($x)=pop(@array);
		my($y)=pop(@array);
		push(@array,$x/$y);
		next;
	}
	if($line eq '=') {
		last;
		next;
	}
	push(@array,$line);
}
# should we print an error if the size of the array is not 1 ?
print "@array\n";
