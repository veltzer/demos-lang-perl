#!/usr/bin/perl -w

=head

This example shows how to work with the terminal in perl.

You may need to do 'stty sane' if this program terminates untimely.

=cut

use strict;
use warnings;

select(STDIN);
$|=1;
select (STDOUT);

system "stty -echo -icanon eol \001"; # char at a time, no echo

my $c=1;
while(ord($c)!=4) {
	$c=getc(STDIN);
	print($c);
	#print ("-$c",ord($c));
}
