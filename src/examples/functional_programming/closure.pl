#!/usr/bin/perl

=head

This is an example of a closure in perl.
Some people do not know that perl supports closures.

References:
http://perl.plover.com/classes/fp/samples/slide011.html

=cut

use strict;
use warnings;

sub outer {
	my $x = shift;
	my $inner = sub {
		my $y = shift;
		if ($y == 0) { $x++ }
			return $x + $y;
	};
	return $inner;
}

my $d = outer(100);
my $e = outer(10);

print $d->(3)."\n";
print $e->(3)."\n";
print $d->(5)."\n";
print $e->(5)."\n";
