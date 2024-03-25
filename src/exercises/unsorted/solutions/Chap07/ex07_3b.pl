# Exercise 7.3b

# Replace a specified record in a data file
# There are 10 characters per record with no record separators

(@ARGV == 3) || die("Usage: $0 recno record filename\n");

# Open the file
open(CHGFILE, "+<$ARGV[2]") || die("Cannot open file $ARGV[2]\n");

# Seek to the beginning of the record
seek(CHGFILE, 10*($ARGV[0] - 1), 0) ||
	die("Unable to seek to record $ARGV[0]\n");

# Make sure the record is no longer than 10 characters
my(@record) = split(//, $ARGV[1]);

# If the record is shorter than 10 characters, pad it with blanks
while (@record < 10) {
	$record[@record] = " ";
}
my($record) = join("", @record[0..9]);

# Replace the record
print CHGFILE ($record);
