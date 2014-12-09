#!/usr/bin/perl -w

# Short version
print map("$_\n", grep($_ % 3 == 0, /\d+/g)) while (<>);

exit;

# Long version
while (<>) {
	foreach (/\d+/g) {
		print "$_\n" if ($_ % 3 == 0);
	}
}
