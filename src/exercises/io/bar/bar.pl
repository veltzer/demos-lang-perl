#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;
use diagnostics;
use Time::HiRes qw(usleep);

my $eol="\r";
my $udelay=40000;
my $line_len=79;
my $do_flush=1;

while(1) {
	# move right
	my $i;
	for($i=0;$i<$line_len;$i++) {
		my $space=" " x $i;
		my $rev_space=" " x ($line_len-$i-1);
		print $space."*".$rev_space.$eol;
		if ($do_flush) { flush STDOUT; }
		usleep($udelay);
	}
	# move left
	for($i=0;$i<$line_len;$i++) {
		my $space=" " x $i;
		my $rev_space=" " x ($line_len-$i-1);
		print $rev_space."*".$space.$eol;
		if ($do_flush) { flush STDOUT; }
		usleep($udelay);
	}
}
