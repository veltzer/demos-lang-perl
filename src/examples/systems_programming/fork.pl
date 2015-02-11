#!/usr/bin/perl -w

# this demos fork and wait 

use strict;
use diagnostics;

if($#ARGV!=0) {
	die("usage: fork.pl [num_of_children]");
}
my($number_of_children)=$ARGV[0];

for(my($i)=0;$i<$number_of_children;$i++) {
	my($pid)=fork();
	if($pid==0) {
		my($time_to_wait)=2+rand(8);
		print "child number $i waiting for $time_to_wait\n";
		sleep($time_to_wait);
		print "child number $i finishing\n";
		exit;
	} else {
		print "created child $i with pid $pid\n";
	}
}
print "starting wait for children\n";
while($number_of_children>0) {
	my($pid)=wait();
	$number_of_children--;
	print "child $pid died...have $number_of_children children left\n";
}
