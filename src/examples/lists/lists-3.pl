#!/usr/bin/perl -w

while ($line = <STDIN>) {
	@words = split(" ", $line);
	foreach $word (@words) {
		$word = substr($word, 0, 5);
	}
	print join(" ", @words), "\n";
}
