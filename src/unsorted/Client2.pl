#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

use IO::Socket;

my($sock) = new IO::Socket::INET(
	PeerAddr => 'localhost',
	PeerPort => 1200,
	Proto => 'tcp'
);

die "create/connect error: $!\n" unless $sock;

while (<>) {
	print $sock $_;
}
