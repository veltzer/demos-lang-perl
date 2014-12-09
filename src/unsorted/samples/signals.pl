#!/usr/bin/perl -w

foreach $k (keys %SIG) { 
	print "$k ".$SIG{$k}." \n"; 
}
