# Exercise 12.4

use strict;
use warnings;

# List the hidden files in a directory

# Default to current directory
$ARGV[0] = "." if (@ARGV == 0);

# Open the directory
die("Can't open directory $ARGV[0]\n") unless opendir($fh, $ARGV[0]);

# Read the list of files
while (my($file) = readdir($fh)) {
	print("$file\n") unless (-d $file || $file !~ /^\./);
}

closedir($fh);
