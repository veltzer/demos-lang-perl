#!/usr/bin/perl -w
print "Hello World\n";
while (<>) {
	print eval($_);
}
