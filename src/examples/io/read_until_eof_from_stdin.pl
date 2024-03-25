#!/usr/bin/perl -w

=head

=cut

use strict;
use warnings;

while (my($line)=<STDIN>) {
	chomp($line);
	print $line."\n";
}
print "After the loop...\n"
