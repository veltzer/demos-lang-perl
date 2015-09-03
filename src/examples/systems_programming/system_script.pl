#!/usr/bin/perl -w

=head

=cut

use strict;
use warnings;

my($random)=rand(1);
if($random<0.5) {
	print "success\n";
} else {
	print "error\n";
}
exit 0;
