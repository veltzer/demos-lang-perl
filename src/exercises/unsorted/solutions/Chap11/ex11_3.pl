# Exercise 11.3

use strict;
use warnings;

# Remove a specified subtree

die("Usage: $0 <dirname>\n") unless (@ARGV > 0);

my($depth) = 0;

&removedir($ARGV[0]);

sub removedir {
	my($dir) = @_;
	my($handle) = "DIR$depth"; # Use unique handle
	my($file);

	opendir($handle, $dir) || die("Can't open $dir\n");
	chdir($dir); # Descend into subtree
	++$depth;
	while ($file = readdir($handle)) {
		if ($file ne "." && $file ne "..") {
			if (-d $file) {
				&removedir($file);
			} else {
				unlink($file); # Delete any non-directory file
			}
		}
	}
	chdir(".."); # Move back up one level
	--$depth;
	closedir($handle) || die("Can't close $dir\n");
	rmdir($dir) || warn("Can't remove $dir\n");
}
