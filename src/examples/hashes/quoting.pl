#!/usr/bin/perl -w

use strict;
use warnings;

my(%myhash)=(
	'happy'=>'sad',
	'funny'=>'morbid',
	'%&\\;'=>'ugly',
);

print "$myhash{'%&\\;'}\n";
