#!/usr/bin/perl -w

while (<>) {
	print "$&\n" while (/\b(\w)\w*\1\b/g);
}
