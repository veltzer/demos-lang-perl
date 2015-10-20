# Exercise 1.4

# Read from standard input and write to standard output

$line = <STDIN>;
while ($line ne "") {
	print($line);
	$line = <STDIN>;
}
