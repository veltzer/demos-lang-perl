#!/usr/bin/perl -w

while (<>) {
	s/\d+/length $&/ge;
	print;
}
