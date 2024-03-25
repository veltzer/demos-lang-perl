#!/usr/bin/perl -w

do
{
	print "Enter login> ";
	$login = <STDIN>;
	chomp $login;
} while ($login eq "");

print "Enter full name> ";
$name = <STDIN>;
chomp $name;

print "Enter password> ";
$password = <STDIN>;
chomp $password;

print "Login: [$login]\n";
print "Name: [$name]\n";
print "Password: [$password]\n";
