#!/usr/bin/perl

=pod

This shows that IO in perl is restarted for interrupting signals.

Notice that because we interrupt a system call using the signal
the $! variable inside the signal handler says 'interrupted system call'.

Press 'CTRL+C' to see this in action.

References:
http://docstore.mik.ua/orelly/perl/cookbook/ch16_16.htm

=cut

use strict;
use warnings;

$SIG{INT} = sub {
	print "\$! is [$!]\n";
	my $num=shift;
	print "num is [$num]\n";
};

print "What is your name: ";
flush STDOUT;
my $name=<STDIN>;
chomp($name);
print "name is [$name]\n";
