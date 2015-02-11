# Exercise 8.1

# Mimic the egrep utility

#$pattern = $ARGV[0];
$pattern = shift(@ARGV);

while ($line = <>) {
	if ($line =~ /$pattern/) {
		print($line);
	}
}
