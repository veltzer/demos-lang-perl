#!/usr/bin/perl

use strict;
use warnings;

=pod

=cut

my(%myhash)=(
	'happy'=>'sad',
	'funny'=>'morbid',
	'%&\\;'=>'ugly',
);

print "$myhash{'%&\\;'}\n";
