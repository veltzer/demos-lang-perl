#!/usr/bin/perl

use strict;
use warnings;

use DBI;

my($dbh)= DBI->connect('DBI:Oracle:payroll')
	or die "Couldn't connect to database: " . DBI->errstr;
my($sth)= $dbh->prepare('SELECT * FROM people WHERE lastname = ?')
	or die "Couldn't prepare statement: " . $dbh->errstr;

print "Enter name> ";
while (my($lastname) = <>) {
	# Read input from the user
	my @data;
	chomp $lastname;
	$sth->execute($lastname) # Execute the query
	or die "Couldn't execute statement: " . $sth->errstr;

	# Read the matching records and print them out
	while (@data = $sth->fetchrow_array()) {
		my $firstname = $data[1];
		my $id = $data[2];
		print "\t$id: $firstname $lastname\n";
	}

	if ($sth->rows == 0) {
		print "No names matched `$lastname'.\n\n";
	}

	$sth->finish;
	print "\n";
	print "Enter name> ";
}

$dbh->disconnect;
