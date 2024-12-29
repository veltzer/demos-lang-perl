#!/usr/bin/perl

=pod

A demo of a context aware function.

What is context awareness?
Perl has a rare feature in programming languages which is context awareness.
A function may act upon whether it's return value will be put into a scalar,
list or will not be used at all (these are the three 'contexts').
A function detects the context in which it is called using the 'wantarray'
built in function.
The name of the function is actually a misnomer since it should have been
called 'wantlist'.

References:
http://www.perl.com/pub/2006/02/23/advanced_subroutines.html

=cut

use strict;
use warnings;

sub check_context {
	# True
	if ( wantarray ) {
		print "List context\n";
		return ('a', 'b');
	}
	# False, but defined
	elsif ( defined wantarray ) {
		print "Scalar context\n";
		return 7;
	}
	# False and undefined
	else {
		print "Void context\n";
		return;
	}
}

my @x=check_context(); # prints 'List context'
my %x=check_context(); # prints 'List context'
my ($a,$b)=check_context(); # prints 'List context'
my $x=check_context(); # prints 'Scalar context'
check_context(); # prints 'Void context'
