#!/usr/bin/perl -w

use IO::Socket::INET;

$server = IO::Socket::INET->new(LocalPort => "80",
	Type => SOCK_STREAM,
	Reuse => 1,
	Listen => 10 ) # or SOMAXCONN
	|| die "Couldn't be a tcp server on port 80: $!\n";

print "WAIT\n";
while ($client = $server->accept()) {
	while ($c = getc($client)) {
		print $c;
	}
		print $client "tnx\n";
	close($client);
}
print "DONE\n";
close($server);
