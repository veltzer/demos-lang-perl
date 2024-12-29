#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

use IO::Socket;

my($sock) = new IO::Socket::INET(
	PeerAddr => $ARGV[0],
	PeerPort => 80,
	Proto => 'tcp'
);

die "create/connect error: $!\n" unless $sock;

$sock->print("GET /\n");

while (<$sock>) {
	print;
}
