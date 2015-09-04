#!/usr/bin/perl -w

=head

This script aims to test whether there is a significant
difference in performance in perl between pop and shift
(meaning whether perl implements the array as a cyclic
entity or not).

The results?
shift and unshift are indeed slower than push and pop but
much lees than you'd expect. This means that perl people
probably have done some optimization under the hood (like
allocating more space which is needed for unshifting).

=cut

use strict;
use warnings;
use Benchmark ':hireswallclock';

my($num)=10000000;

sub push_pop {
	my(@array);
	for(my($i)=0;$i<$num;$i++) {
		push(@array,$i);
	}
	for(my($i)=0;$i<$num;$i++) {
		pop(@array);
	}
}

sub unshift_shift {
	my(@array);
	for(my($i)=0;$i<$num;$i++) {
		unshift(@array,$i);
	}
	for(my($i)=0;$i<$num;$i++) {
		shift(@array);
	}
}

Benchmark::timethese(10, {
	'unshift_shift' => \&unshift_shift,
	'push_pop' => \&push_pop,
});
