#!/usr/bin/perl -w

=head

This example explores single quoted vs double quoted strings in perl.

=cut

use strict;
use warnings;

my $v=7;

# single quoted ones do not do interpolation (neither variables nor \n)
print 'v is $v\n';
# double quoted strings do interpolation (both variables and \n)
print "v is $v\n";
