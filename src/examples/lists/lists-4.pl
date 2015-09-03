#!/usr/bin/perl -w

=head

=cut

use strict;
use warnings;

while ($line = <STDIN>) {
	chomp $line;
	@data = split(":", $line);
	$data[1] = "";
	print join(":", @data), "\n";
}
