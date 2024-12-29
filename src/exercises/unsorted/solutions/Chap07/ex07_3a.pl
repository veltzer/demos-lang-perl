# Exercise 7.3a

=pod

=cut

use strict;
use warnings;

# Read a specified record from a data file
# There are 10 characters per record with no record separators

(@ARGV == 2) || die("Usage: $0 recno filename\n");

# Open the file
open(my $fh, "<", $ARGV[1]) || die ("Unable to open $ARGV[1]: ");

# Seek to the beginning of the record
seek($fh, 10*($ARGV[0] - 1), 0) ||
	die("Unable to seek to record $ARGV[0]\n");

# Read the record
my($record);
read($fh, $record, 10);

close($fh);

# Print the record
print ("$record\n");
