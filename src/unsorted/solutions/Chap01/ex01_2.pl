# Exercise 1.2

# Prompt for information, then print mailing label

print("Name: ");
$name = <STDIN>;
chomp($name);

if ($name eq "") {
  $name = "No name given";
}

print("Address: ");
$addr = <STDIN>;
chomp($addr);

if ($addr eq "") {
  $addr = "No address given";
}

print("City, State and Zip Code: ");
$CSZ = <STDIN>;
chomp($CSZ);

if ($CSZ eq "") {
  $CSZ = "No City, State, and Zip Code given";
}

print("$name\n$addr\n$CSZ\n");

