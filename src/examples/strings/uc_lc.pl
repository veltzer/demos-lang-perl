#!/usr/bin/perl -w

=head

This examples explores the uc,lc,ucfirst,lcfirst functions.

=cut

use strict;
use warnings;

my @strs=(
	'ThisIsAString',
	'thisIsAString',
	'lowercase',
	'uppercase',
);

foreach my $str (@strs) {
	print "uc(\"$str\")=".uc($str)."\n";
	print "ucfirst(\"$str\")=".ucfirst($str)."\n";
	print "lc(\"$str\")=".lc($str)."\n";
	print "lcfirst(\"$str\")=".lcfirst($str)."\n";
}
