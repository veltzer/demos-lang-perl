#!/usr/bin/perl -w

=head

List all signals that perl knows about.

=cut

use strict;
use warnings;

foreach $k (keys %SIG) { 
	if(defined($SIG{$k})) {
		print "$k ".$SIG{$k}." \n"; 
	} else {
		print "$k\n"; 
	}
}
