#!/usr/bin/perl -w

while ($line = <STDIN>) {
	chomp $line;
	if ($line eq "+") {
		push(@stack, pop(@stack) + pop(@stack));
	} elsif ($line eq "*") {
		push(@stack, pop(@stack) * pop(@stack));
	} elsif ($line eq "=") {
		print pop(@stack), "\n";
	} elsif ($line eq "c") {
		pop(@stack);
	} else {
		push(@stack, $line);
	}
}
