#!/usr/bin/perl -w

@cntrs = (0,0,0,0,0,0,0,0,0,0);
while (<>) {
	$cntrs[$_]++ foreach (/\d/g);
}
