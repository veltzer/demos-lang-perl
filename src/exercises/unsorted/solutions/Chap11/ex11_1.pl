# Exercise 11.1

use strict;
use warnings;

# List filename, UID, GID, and size for all files in a specified directory

$ARGV[0] = "." if (@ARGV == 0);

die("Can't open directory\n") unless opendir(my $fh, $ARGV[0]);

while (my($file) = readdir($fh)) {
	unless (-d $file) {
		my(@attr) = stat($file);
		printf("%15s%5d%5d%10d\n", $file, $attr[4], $attr[5], $attr[7]);
	}
}
closedir($fh);
