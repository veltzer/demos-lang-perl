#!/usr/bin/perl

use strict;
use warnings;

my @lines=`ifconfig`;
foreach my $line (@lines) {
	my $pos=index($line, 'inet addr:');
	if($pos!=-1) {
		my @sp=split /\s+/,$line;
		#print join(',', @sp)."\n";
		my $fip=$sp[2];
		my $ip=substr($fip, 5);
		print $ip."\n";
	}
}
