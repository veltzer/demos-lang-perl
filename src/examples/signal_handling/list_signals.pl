#!/usr/bin/perl

=pod

List all signals that perl knows about.

=cut

use strict;
use warnings;

foreach my $k (keys %SIG) { 
	if(defined($SIG{$k})) {
		print "$k ".$SIG{$k}."\n"; 
	} else {
		print "$k\n"; 
	}
}
