#!/usr/bin/perl

if ($#ARGV<1) { die "usage: mlp <conf> [file [...]]\n"; }

my $conf = shift(@ARGV);
open (CONF, "<$conf") || die "cannot open configuration file ($conf): $!\n";
my(@rules);
while (<CONF>)
{
	my($p1,$p2,$p3) = $_ =~ /^(\S+)\s+(\S+)\s+(\S+)$/;
	push(@rules, [$p1, $p2, $p3, 0]);
	print("\t$p1.$p2");
}
close(CONF);
print("\t\n");

my($file);
foreach $file (@ARGV) {
	open (FILE, "<$file") || die "cannot open input file ($conf): $!\n";
	while (my($line) = <FILE>)
	{
#		print "READ $line";
		my($rule);
		foreach $rule (@rules) {		
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
	close(FILE);
	print "$file\t";
	my($rule);
	foreach $rule (@rules) {
		print "$rule->[4]\t";
		$rule->[3]=0;
		$rule->[4]=undef;
	}
	print "\n";
}
