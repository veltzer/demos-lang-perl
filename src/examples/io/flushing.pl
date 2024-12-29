#!/usr/bin/perl

=pod

This example shows the meaning of flusing.
Flushing occurs when:
- you explicitly call the flush function.
- you print "\n".
- you set $| to 1.

=cut

use strict;
use warnings;

print 'a';
sleep 1;
print 'b';
sleep 1;
print 'c';
flush STDOUT;
sleep 1;
print 'd';
sleep 1;
print "\n";
