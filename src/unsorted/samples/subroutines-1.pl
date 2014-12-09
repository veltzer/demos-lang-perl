#!/usr/bin/perl -w

($min, $max, $avg) = calc(@ARGV);

print "Min: $min, Max: $max, Avg: $avg\n";
sub calc
{
	my ($min, $max, $sum) = ($_[0], $_[0]);
	
	return if (@_ == 0);
	
	foreach my $i (@_) {
		$sum += $i;
		$min = $i if ($i < $min);
		$max = $i if ($i > $max);
	}
	return ($min, $max, $sum / @_);	
}
