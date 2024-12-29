#!/usr/bin/perl

while (<>) {
	s/\d+/length $&/ge;
	print;
}
