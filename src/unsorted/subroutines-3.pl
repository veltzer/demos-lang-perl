#!/usr/bin/perl

use strict;
use warnings;

=pod

this is not exacltly the answer to the exercise in the slides
as it reverses a string and not the array sent to it
see the next answer for that

=cut

my($str) = shift;

print reverse_str($str), "\n";

sub reverse_str
{
	my $s = shift;
	return "" if $s eq "";
	return chop($s) . reverse_str($s);
}
