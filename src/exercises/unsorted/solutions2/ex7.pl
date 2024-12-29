#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

while (<>) { 
	s/\d+/length($&)/ge;
	print; 
}
