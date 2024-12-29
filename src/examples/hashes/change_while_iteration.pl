#!/usr/bin/perl

=head

This script explores what happens when you change
a hash while iterating it.

When you run this you will get the following warning:
Use of each() on hash after insertion without resetting hash iterator results in undefined behavior, Perl interpreter: 0x26da010 at ./change_while_iteration.pl line 28.

=cut

use strict;
use warnings;

my %hash=(
	1 => 11,
	2 => 12,
	3 => 13,
	4 => 14,
	5 => 15,
	6 => 16,
	7 => 17,
	8 => 18,
	9 => 19,
);

my $c=0;
while(my($key,$val)=each(%hash)) {
	print "$key -> $val\n";
	$c++;
	if($c==5) {
		#$hash{mark}='foo';
	}
}
print ''.$c."\n";
