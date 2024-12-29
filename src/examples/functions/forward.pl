#!/usr/bin/perl -w

=head

This is an example of forward functions in perl.

=cut

use strict;
use warnings;

sub two;

sub one {
	print "one\n";
	two;
}

sub two {
	print "two\n";
}

one
