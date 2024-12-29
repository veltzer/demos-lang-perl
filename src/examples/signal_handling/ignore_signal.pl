#!/usr/bin/perl

=pod

This is an example of how to ignore a signal in perl.
Try to press 'CTRL+C' while this is running...

References:
http://docstore.mik.ua/orelly/perl/cookbook/ch16_16.htm

=cut

use strict;
use warnings;

$SIG{INT} = 'IGNORE'; # ignore the signal INT

print "Before sleep\n";
sleep(10);
print "After sleep\n";
