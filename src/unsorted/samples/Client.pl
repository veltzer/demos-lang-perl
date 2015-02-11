#!/usr/bin/perl -w

use IO::Socket;

$sock = new IO::Socket::INET(	PeerAddr => $ARGV[0],
				PeerPort => 80,
				Proto => 'tcp'
);

die "create/connect error: $!\n" unless $sock;

$sock->print("GET /\n");

while (<$sock>) {
	print;
}
