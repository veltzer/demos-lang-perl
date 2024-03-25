#!/usr/bin/perl -w

=head

This script swaps even and odd lines in STDIN and prints
them out to STDOUT using an array.

=cut

use strict;
use warnings;

my(@list)=<STDIN>;
$list[@list]='';
for(my($i)=0;$i<@list-1;$i+=2) {
	print $list[$i+1].$list[$i];
}
