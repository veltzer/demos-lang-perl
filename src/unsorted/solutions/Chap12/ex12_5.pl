# Exercise 12.5

# List date and time

@month = qw(January February March April May June July August September October November December);

@date = localtime(time()); # Get the current time

$date = 1900 + $date[5]; # Calculate the date

# Print the date
print("$month[$date[4]] $date[3], $date\n");

# Print the time
if ($date[2] == 0) {
	$hour = 12;
} else {
	$hour = ($date[2] > 12) ? $date[2] - 12 : $date[2];
	$hour = "0" . $hour if ($hour < 10);
}
$min = (($date[1] < 10) ? "0" : "") . $date[1];
$sec = (($date[0] < 10) ? "0" : "") . $date[0];
printf("%d:%02d:%02d ", $hour, $min, $sec);
print((($date[2] < 12) ? "AM" : "PM"), "\n");
