#!/usr/bin/perl

use strict;
use warnings;

my @lines=<STDIN>;
chomp(@lines);
my %dict=@lines;

my($key, $value);
while(($key, $value)=each(%dict)) {
	print "key is $key\n";
	print "value is $value\n";
}

print ('-' x 40);
print "\n";

=pod
my %revdict=reverse @lines;

while(($key, $value)=each(%revdict)) {
	print "key is $key\n";
	print "value is $value\n";
}
=cut

my %revdict;
while(($key, $value)=each(%dict)) {
	$revdict{$value}=$key;
}

sub print_dict() {
	while(($key, $value)=each(%revdict)) {
		print "key is $key\n";
		print "value is $value\n";
	}
}
