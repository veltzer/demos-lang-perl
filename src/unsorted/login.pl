#!/usr/bin/perl -w

=head

This script prints out a login statement and waits
for a non empty login and then accepts a name and
a password printing all the information at the end

=cut

use strict;
use warnings;

my($login,$name,$password);

do {
	print "Please enter your login : ";
	$login=<STDIN>;
	chomp($login);
	if($login eq "") {
		print "Error - you must enter a login\n";
	}
}
while($login eq "");
print "Please enter your name : ";
$name=<STDIN>;
chomp($name);
print "Please enter your password : ";
$password=<STDIN>;
chomp($password);

print "The login is $login\n";
print "The name is $name\n";
print "The password is $password\n";
