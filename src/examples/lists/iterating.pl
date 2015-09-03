#!/usr/bin/perl -w

=head

This shows the 3 ways of iterating an array in perl.

=cut

use strict;
use warnings;

my @words = split ':', 'this:is:the:content:of:the:line';
foreach my $word (@words) {
	print "word is $word\n";
}

print '-' x 40;
print "\n";

for(my($i)=0; $i<scalar(@words); $i++) {
	print "word is $words[$i]\n";
}

print '-' x 40;
print "\n";

# this is not recommended
for(my($i)=0; $i<=$#words; $i++) {
	print "word is $words[$i]\n";
}

print '-' x 40;
print "\n";

while(my($index, $word)=each @words) {
	print "word is $word\n";
}
