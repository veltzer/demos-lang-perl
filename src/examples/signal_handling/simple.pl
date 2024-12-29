#!/usr/bin/perl

=pod

A basic example of trapping signals in perl.

Notes:
- if you 'die' inside the signal handler you will not
get to the code after the system call that was interrupted by the signal.
- return value of the signal handler function that you install does not seem to matter.
- you signal handler function gets passed the signal that was received (and no
other parameters).
- $! is last OS error. If a syscall was interrupted when the signal arrived then $! will
carry the error description for 'interrupted system call'.
- by using function references you can install the same function as a signal hander
for two different signal. You can differentiate between them using the parameter
that the function gets which is the signal that it needs to handle.

=cut

use strict;
use warnings;

my $over=0;

$SIG{INT} = sub {
	my $num=shift;
	print "num is [$num]\n";
	#die "want to stop now...";
	$over=1;
};

print "Before loop\n";
while(!$over) {
}
print "After loop\n";
