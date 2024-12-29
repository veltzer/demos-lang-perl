#!/usr/bin/perl

use strict;
use warnings;

my($login);
do
{
	print "Enter login> ";
	$login = <STDIN>;
	chomp $login;
} while ($login eq "");

print "Enter full name> ";
my($name) = <STDIN>;
chomp $name;

print "Enter password> ";
my($password) = <STDIN>;
chomp $password;

print "Login: [$login]\n";
print "Name: [$name]\n";
print "Password: [$password]\n";
