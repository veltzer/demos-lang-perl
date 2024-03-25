#!/usr/bin/perl -w

=head

=cut

use strict;
use warnings;

my @mysub=(2,3);
my @myarray=(1,\@mysub,4,5);
print "the value is $myarray[1]\n";

print "@mysub\n";
print "@myarray\n";
