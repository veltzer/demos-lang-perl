# Exercise 10.1

# Sum three columns of numbers

while ($line = <>) {
  chomp($line);
  @cols = split(" ", $line);
  for ($i = 0; $i < 3; $i++) {
    $totals[$i] += $cols[$i];
  }
  printf("%7.2f  %7.2f  %7.2f\n", @cols);
}
print("-------  -------  -------\n");
printf("%7.2f  %7.2f  %7.2f\n", @totals);

