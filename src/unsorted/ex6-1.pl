#!/usr/bin/perl -w

while (<STDIN>) {
	chomp;
	($name, $phone) = split(",");
	$people{$name} = $phone;
}

print "$_ -> $people{$_}\n" foreach (sort keys %people);
