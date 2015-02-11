# Exercise 12.4

# List the hidden files in a directory

# Default to current directory
$ARGV[0] = "." if (@ARGV == 0);

# Open the directory
die("Can't open directory $dir\n") unless opendir(DIR, $ARGV[0]);

# Read the list of files
while ($file = readdir(DIR)) {
	print("$file\n") unless (-d $file || $file !~ /^\./);
}

closedir(DIR);
