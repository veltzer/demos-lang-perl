#!/usr/bin/perl -w

# this script prints all the hidden files of a directory given
# to it on the command line

use strict;
use diagnostics;

my($dir)=$ARGV[0];
opendir(DIR,$dir) || die("huh!?!");
my($file);
while($file=readdir(DIR)) {
	if(substr($file,0,1) eq ".") {
		print $file."\n";
	}
}
closedir(DIR) || die("duh!?!");
