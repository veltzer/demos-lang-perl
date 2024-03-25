#!/usr/bin/perl -w

# Without <>
if (@ARGV > 0) {
	my($file);
	foreach $file (@ARGV) {
		open(FILE, $file) || die "can't open $file: $!\n";
		while (<FILE>) {
			print length > 5 ? substr($_, 0, 5) . "\n" : $_;
		}
		close FILE;
	}
} else {
	while (<STDIN>) {
		print length > 5 ? substr($_, 0, 5) . "\n" : $_;
	}
}

# With <>
while (<>) {
	print length > 5 ? substr($_, 0, 5) . "\n" : $_;
}
