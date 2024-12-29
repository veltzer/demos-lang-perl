#!/usr/bin/perl

use strict;
use warnings;

use IO::Socket;

my($sock) = new IO::Socket::INET (
	LocalHost => "localhost",
	LocalPort => 1200,
	Proto => 'tcp',
	Listen => 5,
	Reuse => 1
);

die "create/bind error: $!\n" unless $sock;

my($client) = $sock->accept();
die "accept error: $!\n" unless $client;

print "Client has connected!\n";

while (<$client>) {
	print;
}
