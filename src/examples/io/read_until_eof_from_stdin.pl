#!/usr/bin/perl -w

while ($line=<STDIN>) {
	chomp($line);
	print $line."\n";
}
print "After the loop...\n"
