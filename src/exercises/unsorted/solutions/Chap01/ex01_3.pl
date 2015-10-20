# Exercise 1.3

# Read address label information from a file

$last = <STDIN>;
chomp($last);

$first = <STDIN>;
chomp($first);

$addr = <STDIN>;
chomp($addr);

$city = <STDIN>;
chomp($city);

$state = <STDIN>;
chomp($state);

$zip = <STDIN>;
chomp($zip);

print("$first $last\n");
print("$addr\n");
print("$city, $state $zip\n");

