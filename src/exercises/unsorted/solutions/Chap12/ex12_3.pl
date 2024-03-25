# Exercise 12.3

# Print the ASCII Table

for my($n) (0..255) {
	printf("%s %3d %3o %2x\n", chr $n, $n, $n, $n);
}
