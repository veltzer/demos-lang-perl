#!/usr/bin/perl -w

%hash = (
	John => 7,
	Mary => 3,
	Jane => 1,
	Moe => 10
);

@sorted = sort { $hash{$a} <=> $hash{$b} } keys %hash;
print "@sorted\n";
