# Exercise 5.3

# List words in alphabetical order

@file = <STDIN>;
chop(@file);

@words = sort(split(/ /, join(" ", @file)));

$word1 = $words[0];
print("$word1\n");
$i = 1;
while ($i < @words) {
  if ($words[$i] ne $words[$i - 1]) {
    print("$words[$i]\n");
  }
  $i++;
}


