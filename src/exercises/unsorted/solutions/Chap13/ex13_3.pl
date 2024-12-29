# Exercise 13.3

# Print environment variables

my($var);
foreach $var (@ARGV) {
	if (defined $ENV{$var}) {
		print("$var: $ENV{$var}\n");
	} else {
		warn("Variable $var does not exist\n");
	}
}
