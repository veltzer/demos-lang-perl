# Exercise 7.3a

# Read a specified record from a data file
# There are 10 characters per record with no record separators

(@ARGV == 2) || die("Usage: $0 recno filename\n");

# Open the file
open(INFILE, "$ARGV[1]") || die ("Unable to open $ARGV[1]: ");

# Seek to the beginning of the record
seek(INFILE, 10*($ARGV[0] - 1), 0) ||
  die("Unable to seek to record $ARGV[0]\n");

# Read the record
read(INFILE, $record, 10);

# Print the record
print ("$record\n");


