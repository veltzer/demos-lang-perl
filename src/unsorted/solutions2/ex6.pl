#!/usr/bin/perl -w
$p = shift @ARGV;
while (<>) { 
	print if (/$p/); 
}
