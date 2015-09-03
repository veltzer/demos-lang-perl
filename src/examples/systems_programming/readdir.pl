#!/usr/bin/perl -w

=head

A simple demo of the perl 'readdir' function.

=cut

use strict;
use warnings;

my($dir)=".";
opendir(DIR,$dir) || die("error in opendir");
my($file);
while($file=readdir(DIR)) {
	print $file."\n";
}
closedir(DIR) || die("error in closedir");
