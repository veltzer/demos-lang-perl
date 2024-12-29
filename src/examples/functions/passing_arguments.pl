#!/usr/bin/perl

=pod

This demo shows the various ways in which you can accept
argument in a perl function.

=cut

use strict;
use warnings;

# the recommended way
sub add1 {
	my($a, $b)=@_;
	return $a+$b;
}

# very common in perl
sub add2 {
	my $a=shift @_;
	my $b=shift @_;
	return $a+$b;
}

# same as the previous example (@_ is implied)
sub add3 {
	my $a=shift;
	my $b=shift;
	return $a+$b;
}

# the ugliest
sub add4 {
	my $a=$_[0];
	my $b=$_[1];
	return $a+$b;
}

my $a=2;
my $b=3;

print "did you know that $a+$b=".add1($a, $b)."?\n";
print "did you know that $a+$b=".add2($a, $b)."?\n";
print "did you know that $a+$b=".add3($a, $b)."?\n";
print "did you know that $a+$b=".add4($a, $b)."?\n";
