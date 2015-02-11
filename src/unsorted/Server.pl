#!/usr/bin/perl -w

use IO::Socket;

$sock = new IO::Socket::INET (	LocalHost => "localhost",
				LocalPort => 1200,
				Proto => 'tcp',
				Listen => 5,
				Reuse => 1
);

die "create/bind error: $!\n" unless $sock;

$client = $sock->accept();
die "accept error: $!\n" unless $client;

print "Client has connected!\n";

while (<$client>) {
	print;
}
