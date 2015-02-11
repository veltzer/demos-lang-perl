# Exercise 8.2

# List the line numbers and positions in which a word occurs in a file or
# list of files

# Get the word
$word = shift(@ARGV);

while ($line = <>) {
	$lineno++;
	if ($line =~ /$word/g) {
		print("line $lineno: ", pos($line) - length($word) + 1);
		$flag = 1;
	}
	while ($line =~ /$word/g) {
		print(" ", pos($line) - length($word) + 1);
	}
	print("\n") if ($flag);
	$flag = 0;
}
