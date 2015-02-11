# Exercise 5.1

# Print out a file in upper or lower case

# Get the input
@file = <STDIN>;

# Check for options
if (@ARGV == 0) {
	print(@file);
}
elsif ($ARGV[0] eq "-l") {
	print("found -l\n");
	foreach $line (@file) {
		print("\L$line\E");
	}
}
elsif ($ARGV[0] eq "-u") {
	print("found -u\n");
	foreach $line (@file) {
		print("\U$line\E");
	}
}
else {
	die("Unknown option: $ARGV[0]\n");
}
