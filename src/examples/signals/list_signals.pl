#!/usr/bin/perl -w

foreach $k (keys %SIG) { 
	if(defined($SIG{$k})) {
		print "$k ".$SIG{$k}." \n"; 
	} else {
		print "$k\n"; 
	}
}
