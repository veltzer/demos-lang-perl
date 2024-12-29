#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

my(@array)=(1,2,3,4);

my(@reversed)=reverse_array(@array);

print "@reversed\n";

sub reverse_array
{
	# return empty array if we got no input
	return(()) if(@_==0);
	# first pop the last element and place it at the beging and the rest is
	# the return value from the recusion
	return(pop(@_),reverse_array(@_));
}

sub another_version
{
	# return empty array if we got no input
	return(()) if(@_==0);
	# notice that we have to shift before calling the recursion or
	# we will get a deep recusion
	my($arg);
	$arg=shift;
	return(reverse_array(@_),shift);
}
