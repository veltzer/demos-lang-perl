#!/usr/bin/perl -w

while ($line = <STDIN>) {
	chomp $line;
	@data = split(":", $line);
	$data[1] = "";
	print join(":", @data), "\n";
}
