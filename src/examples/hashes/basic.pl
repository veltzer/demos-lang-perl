#!/usr/bin/perl -w

=head

A demo of a simple hash in perl.
You can see both initialisation and iteration in this example.

=cut

use strict;
use warnings;

my %myhash=(
	'mark'=>1972,
	'doron'=>1976,
);

my $newline="\n";

while(my($key,$val)=each(%myhash)) {
	print 'key is ['.$key.']'.$newline;
	print 'val is ['.$val.']'.$newline;
}
