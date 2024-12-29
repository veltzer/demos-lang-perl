#!/usr/bin/perl

=pod

An example of overriding functions in perl.

=cut

use strict;
use warnings;

sub myfunc {
	print "This is myfunc, first version\n";
}

no warnings 'redefine';

sub myfunc {
	print "This is myfunc, second version\n";
}

myfunc();
