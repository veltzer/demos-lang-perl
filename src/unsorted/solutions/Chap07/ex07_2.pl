# Exercise 7.2

# Print access permissions for a directory

$ARGV[0] = "." unless (@ARGV); # Current directory is default
die("$ARGV[0] is not a directory\n") unless (-d $ARGV[0]);

# Open a pipe for input
open(LS, "ls -a $ARGV[0] |");

# Read the list of files and list permissions for the process owner
while ($file = <LS>) {
	chomp($file);
	print("$file\t");
	print("read") if ( -r "$ARGV[0]/$file");
	print(" write") if ( -w "$ARGV[0]/$file");
	print(" execute") if ( -x "$ARGV[0]/$file");
	print("\n");
}
