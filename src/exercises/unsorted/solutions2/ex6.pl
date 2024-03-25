#!/usr/bin/perl -w
my($p) = shift @ARGV;
while (<>) { 
	print if (/$p/); 
}
