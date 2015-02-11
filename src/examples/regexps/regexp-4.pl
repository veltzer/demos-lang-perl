#!/usr/bin/perl -w

while (<>) {
	s/(\s)\s+/$1/g;
	print;
}
