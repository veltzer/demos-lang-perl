# Exercise 8.1

# Mimic the egrep utility

#$pattern = $ARGV[0];
my($pattern) = shift(@ARGV);

while (my($line) = <>) {
	if ($line =~ /$pattern/) {
		print($line);
	}
}
