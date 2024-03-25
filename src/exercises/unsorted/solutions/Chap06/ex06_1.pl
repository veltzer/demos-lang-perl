# Exercise 6.1

# Phone directory

# Load the directory from standard input
my(@input) = <STDIN>;
chomp(@input);

# Create the directory as a hash
my(%phone) = split(/,/, join(",", @input));

my($name);
foreach $name (sort(keys(%phone))) {
	print("$name\t$phone{$name}\n");
}
