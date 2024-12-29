# Exercise 13.4
# Print date and time, based on -d and -t options

# NOTE: This program requires that Perl be called with the -s option.

my(@date) = localtime(time());

my($year) = 1900 + $date[5];
print($date[4]+1, "/", $date[3], "/", $year, "\n");
#	if ($d == 1 || $dt == 1 || $td == 1);

printf("%d:%02d:%02d\n", $date[2], $date[1], $date[0]);
#	if ($t == 1 || $dt == 1 || $td == 1);
