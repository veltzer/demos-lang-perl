#!/usr/bin/perl -w

$line = <STDIN>;
chomp $line;

for ($i = length($line) - 1; $i >= 0; $i--) {
	print substr($line, $i, 1);
}
print "\n";

# Later we can do:
chomp($line = <STDIN>);
print join("", reverse split("", $line)), "\n"
