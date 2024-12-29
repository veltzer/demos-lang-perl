#!/usr/bin/perl

use strict;
use warnings;

use IO::Socket::INET;

my($server) = IO::Socket::INET->new(LocalPort => "80",
	Type => SOCK_STREAM,
	Reuse => 1,
	Listen => 10 ) # or SOMAXCONN
	|| die "Couldn't be a tcp server on port 80: $!\n";

print "WAIT\n";
while (my($client) = $server->accept()) {
	while (my($c) = getc($client)) {
		print $c;
	}
	print $client "tnx\n";
	close($client);
}
print "DONE\n";
close($server);
