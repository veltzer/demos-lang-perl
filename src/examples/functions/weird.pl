#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

=pod

TBD

=cut

sub add1 {
	my $a = shift;
	my $b = shift;
	return $a+$b;
}

sub add2 {
	my $a = shift @_;
	my $b = shift @_;
	return $a+$b;
}

sub add3 {
	my ($a, $b)=@_;
	return $a+$b;
}

sub add4($$) {  ## no critic
	my ($a, $b)=@_;
	return $a+$b;
}

sub mean {
	my $sum=0;
	foreach my $num (@_) {
		$sum+=$num;
	}
	return $sum/scalar(@_);
}

sub what_does_this_return {
	my $a = shift;
	if ($a == 0) {
		my %dict=(k1=>'v1', k2=>'v2');
		return \%dict;
	}
	if ($a == 1) {
		return 7;
	}
	if ($a == 2) {
		return ('apple','orange');
	}
	if ($a%2 == 0) {
		return "hello";
	}
	return undef; ## no critic
}

my $a = 2;
my $b = 2;
my $c1 = add1 $a,$b;
my $c2 = add2 $a,$b;
my $c3 = add3 $a,$b;
my $c4 = add4 $a,$b;

print "did you that add1($a,$b)=$c1?\n";
print "did you that add2($a,$b)=$c2?\n";
print "did you that add3($a,$b)=$c3?\n";
print "did you that add4($a,$b)=$c4?\n";
print mean(2,3)."\n";
print mean(2,3,4)."\n";
print mean(2,3,4,5)."\n";
