#!/usr/bin/perl

open(my $fh, '<', 'data.txt') || die("bummer!"); 

my($counter)=0;
while(1) {
	# seek $fh,0,SEEK_SET;

	print("reading the file for the [$counter] time...\n");
	while(my($line)=<$fh>) {
		print $line;
	}
	$counter++;
	sleep 2;
}

close($fh);
