#!/usr/bin/perl -w

sub bylastname {
	($first1, $last1) = split(", ",$a);
	($first2, $last2) = split(", ",$b);
	$ret = $last1 cmp $last2;
	$ret = $first1 cmp $first2 if ($ret == 0);
	$ret;
}

@names = (
	"Udi, Davidovich",
	"Nir, Davidovich",
	"David, Israeli"
	);

@names = sort bylastname @names;
print "@names";
