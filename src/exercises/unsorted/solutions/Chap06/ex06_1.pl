# Exercise 6.1

# Phone directory

# Load the directory from standard input
@input = <STDIN>;
chomp(@input);

# Create the directory as a hash
%phone = split(/,/, join(",", @input));

foreach $name (sort(keys(%phone))) {
	print("$name\t$phone{$name}\n");
}
