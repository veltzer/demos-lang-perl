#!/usr/bin/perl -w

my $a = <STDIN>;
my $b = <STDIN>;

chomp($a);
chomp($b);

my $c = $a+$b;

print "$a + $b is $c\n";
