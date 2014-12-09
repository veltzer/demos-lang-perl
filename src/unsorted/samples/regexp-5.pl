#!/usr/bin/perl -w

$url = shift;

die "Invalid URL!\n" if ($url !~ m!^ (\w+) :// ((\w+\.)*\w+) (:(\d+))? (/.*)? $!x) ;

($prot, $host, $port, $path) = ($1, $2, $5, $6);

print "Protocol: $prot\n";
print "Host: $host\n";
print "Port: $port\n" if defined($port);
print "Part: $path\n" if defined($path);
