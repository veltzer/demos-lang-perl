#!/usr/bin/perl

=pod

This is an exmple of how easy it is to implement a shell in perl using the <> (diamond) operator
and the 'eval' function.

=cut

use strict;
use warnings;

while (<>) {
	print eval."\n";
}
