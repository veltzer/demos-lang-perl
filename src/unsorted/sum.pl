#!/usr/bin/perl

my $sum=0;
my $line;
while($line=<STDIN>) {
	chomp($line);
	$sum+=$line;
}
print "$sum\n";
