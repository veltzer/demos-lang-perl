# Exercise 8.3

# Strip numbers from a file and count the number of times each digit occurs

@file = <>;
chomp(@file);
$string = join("", @file);
$string =~ tr/0-9//cd;
@nums = split(//, $string);

foreach $num (@nums) {
  $count[$num]++;
}

for ($num = 0; $num <= 9; $num++) {
  print("$num: $count[$num]\n");
}

