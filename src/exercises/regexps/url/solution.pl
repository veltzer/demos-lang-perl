#!/usr/bin/perl

=pod

This is a solution to the URL exercise.

Run it like this:
./solution.pl http://www.gnu.org

=cut

use strict;
use warnings;

my $url = shift || 'http://www.gnu.org';

die "Invalid URL!\n" if ($url !~ m!^ (\w+) :// ((\w+\.)*\w+) (:(\d+))? (/.*)? $!x) ;

my ($prot, $host, $port, $path) = ($1, $2, $5, $6);

print "Protocol: $prot\n";
print "Host: $host\n";
print "Port: $port\n" if defined($port);
print "Part: $path\n" if defined($path);
