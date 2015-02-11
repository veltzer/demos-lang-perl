#!/usr/bin/perl -w

=head

This script aims to test whether there is a significant
difference in performance in perl between pop and shift
(meaning whether perl implements the array as a cyclic
entity or not).

=cut

use strict;
use diagnostics;

my($num)=1000000;
my(@array);
for(my($i)=0;$i<$num;$i++) {
	#push(@array,1);
	unshift(@array,1);
}
for(my($i)=0;$i<$num;$i++) {
	#pop(@array);
	shift(@array);
}
