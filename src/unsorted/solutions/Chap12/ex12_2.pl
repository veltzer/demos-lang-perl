# Exercise 12.2

# Simulate the tossing of a pair of dice

# Seed the pseudo-random number generator
srand($$);

# Run the simulation 3600 times
for $count (1..3600) {
  $die[int(rand(6)) + int(rand(6)) + 2]++;
}

# Print the results
for $count (2..12) {
  printf("%2d: %4d\n", $count, $die[$count]);
}

