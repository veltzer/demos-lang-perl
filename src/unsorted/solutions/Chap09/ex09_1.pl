# Exercise 9.1

# Pass a list of numbers into a subroutine
# Return the largest, smallest, and average values

# Get the values from the command line
($max, $min, $ave) = &listproc(@ARGV);

print("@ARGV\n");

print("max = $max\nmin = $min\nave = $ave\n");

sub listproc {
  local ($mx, $mn, $av, $count);
  $mx = $mn = $_[0];
  foreach $item (@_) {
    if ($item > $mx) {
      $mx = $item;
    }
    if ($item < $mn) {
      $mn = $item;
    }
    $av += $item;
    $count++;
  }
  return ($mx, $mn, $av/$count);
}

