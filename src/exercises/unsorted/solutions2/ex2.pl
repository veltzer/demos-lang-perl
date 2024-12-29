#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

sub bylastname {
	my($first1, $last1) = split(", ",$a);
	my($first2, $last2) = split(", ",$b);
	my($ret);
	$ret = $last1 cmp $last2;
	$ret = $first1 cmp $first2 if ($ret == 0);
	$ret;
}

my(@names);
@names = (
	"Udi, Davidovich",
	"Nir, Davidovich",
	"David, Israeli"
	);

@names = sort bylastname @names;
print "@names";
