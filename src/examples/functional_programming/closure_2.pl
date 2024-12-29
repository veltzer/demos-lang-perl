#!/usr/bin/perl

=pod

Another example of closure in perl.
This is actually a replacement for object oriented programming.

References:
http://perl.plover.com/classes/fp/samples/slide015.html

=cut

use strict;
use warnings;

sub mkcounter {
	my $a = shift;
	my $f = sub { return $a++; };
	return $f;
}

my $d = mkcounter(5);
my $e = mkcounter(50);

print $d->()."\n";
print $d->()."\n";
print $d->()."\n";
print $d->()."\n";
print $e->()."\n";
print $e->()."\n";
