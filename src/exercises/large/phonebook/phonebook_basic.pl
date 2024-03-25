#!/usr/bin/perl -w

use strict;
use warnings;

my %phonebook;

sub read_phonebook {
	my $fh;
	open($fh, "< phonebook.txt") || die("problem with open [$!]");
	while(<$fh>) {
		chomp;
		my($name,$phone)=split ',';
		$phonebook{$name}=$phone;
	}
	close($fh) || die("problem with close [$!]");
}

sub print_phonebook {
	print "This is the phonebook\n";
	print '-' x 40;
	print "\n";
	while(my($name,$phone)=each(%phonebook)) {
		print "name is $name\n";
		print "phone is $phone\n";
	}
}

read_phonebook;
print_phonebook;
