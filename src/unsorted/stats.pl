#!/usr/bin/perl

=head

Print statistics about an array in a function

=cut

use strict;
use warnings;

sub stats {
	my($sum)=0;
	my($smallest)=$_[0];
	my($biggest)=$_[0];
	foreach my $number (@_) {
		$sum+=$number;
		if($number<$smallest) {
			$smallest=$number;
		}
		if($number>$biggest) {
			$biggest=$number;
		}
	}
	return($biggest,$smallest,$sum/@_);
}

my($biggest,$smallest,$average)=stats(5,6,7,8);
print "biggest is $biggest\n";
print "smallest is $smallest\n";
print "average is $average\n";
