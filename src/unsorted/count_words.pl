#!/usr/bin/perl -w

=head

This script counts number of appearances of the words in STDIN 
and works in a case insensitive manner.

=cut

use strict;
use warnings;

my($line);
my(%hash);
while($line=<STDIN>) {
	chomp($line);
	$line=lc($line);
	my(@array)=split(" ",$line);
	for(my($i)=0;$i<@array;$i++) {
		my($current_word)=$array[$i];
		if(exists($hash{$current_word})) {
			$hash{$current_word}++;
		} else {
			$hash{$current_word}=1;
		}
	}
}
# this is a standard print
#while(my($key,$val)=each(%hash)) {
#	print "$key -> $val\n";
#}
# this prints the keys sorted in reverse order of the values
print join(" ",sort { $hash{$b} cmp $hash{$a}} keys(%hash))."\n";
