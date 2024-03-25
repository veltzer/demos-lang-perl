#!/usr/bin/perl -w

=head

This script parses a url

=cut

use strict;
use warnings;

my($url_to_parse)="http://www.microsoft.com:8080/unregister/force.asp?please=yes";

my($proto,$host,$port,$path,$arguments)=(
	$url_to_parse=~m/^
		((\w+):\/\/)? # this is the protocol
		((\w+\.)+\w+) # this is the host
		(:(\d+))? # this is the port
		((\/[\.\w]+)*) # this is the path
		(\?([\.\w=,]+))? # these are the arguments
	$/x
)[1,2,5,6,9];
print "proto is $proto\n";
print "host is $host\n";
print "port is $port\n";
print "path is $path\n";
print "arguments is $arguments\n";
