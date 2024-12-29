#!/usr/bin/perl

use strict;
use warnings;

if ($#ARGV<1) { die "usage: mlp <conf> [file [...]]\n"; }

my $conf = shift(@ARGV);
open (my $fh, "<", $conf) || die "cannot open configuration file ($conf): $!\n";
my(@rules);
while (<$fh>)
{
	my($p1,$p2,$p3) = $_ =~ /^(\S+)\s+(\S+)\s+(\S+)$/;
	push(@rules, [$p1, $p2, $p3, 0]);
	print("\t$p1.$p2");
}
close($fh);
print("\t\n");

foreach my $file (@ARGV) {
	open ($fh, "<", $file) || die "cannot open input file ($conf): $!\n";
	while (my($line) = <$fh>)
	{
#		print "READ $line";
		foreach my $rule (@rules) {		
#			print "MATCHING $rule->[0] $rule->[1] $rule->[2]\n";
			unless ($rule->[3])
			{				
				$rule->[3] = $line =~ $rule->[0];
#				print "MATCHED P1 $rule->[3]";
			}
			if ($rule->[3]==1 && $line =~ $rule->[1])
			{
				$line =~ $rule->[2];
				$rule->[4] = $1;
				$rule->[3] = 2;
			}
		}
	}
	close($fh);
	print "$file\t";
	foreach my $rule (@rules) {
		print "$rule->[4]\t";
		$rule->[3]=0;
		$rule->[4]=undef;
	}
	print "\n";
}
