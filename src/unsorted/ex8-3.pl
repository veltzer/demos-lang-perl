#!/usr/bin/perl -w

my(@cntrs) = (0,0,0,0,0,0,0,0,0,0);
while (<>) {
	$cntrs[$_]++ foreach (/\d/g);
}
