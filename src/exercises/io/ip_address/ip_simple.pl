#!/usr/bin/perl

use strict;
use warnings;

my @lines=`ifconfig`;
if($?!=0) {
	die("something went wrong with running ifconfig...");
}
foreach my $line (@lines) {
	my $pos=index($line, 'inet addr:');
	if($pos!=-1) {
		my $startpos=$pos+10;
		my $endpos=index($line, ' ', $startpos);
		my $ip=substr($line, $startpos, $endpos-$startpos);
		print "[$ip]\n";
	}
}
