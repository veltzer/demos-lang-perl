# Exercise 1.2

use strict;
use warnings;

# Prompt for information, then print mailing label

print("Name: ");
my($name) = <STDIN>;
chomp($name);

if ($name eq "") {
	$name = "No name given";
}

print("Address: ");
my($addr) = <STDIN>;
chomp($addr);

if ($addr eq "") {
	$addr = "No address given";
}

print("City, State and Zip Code: ");
my($CSZ) = <STDIN>;
chomp($CSZ);

if ($CSZ eq "") {
	$CSZ = "No City, State, and Zip Code given";
}

print("$name\n$addr\n$CSZ\n");
