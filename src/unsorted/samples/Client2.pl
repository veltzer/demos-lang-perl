#!/usr/bin/perl -w

use IO::Socket;

$sock = new IO::Socket::INET(	PeerAddr => 'localhost',
				PeerPort => 1200,
				Proto    => 'tcp'
);

die "create/connect error: $!\n" unless $sock;

while (<>) {
	print $sock $_;
}
