# Exercise 3.2 - Greet a list of people

# Use a ":" as a name and language code separator

foreach $name ("John:1", "Duncan:2", "Hector:3", "Rene:4", "Nobody:5") {

  # Get the language code
  $code = chop($name);

  # Throw away the separator
  chop($name);

  # Greet the person according to language code
  if    ($code == 1) {print("Hello, $name\n");}
  elsif ($code == 2) {print("G'day, $name\n");}
  elsif ($code == 3) {print("Buenos dias, $name\n");}
  elsif ($code == 4) {print("Bonjour, $name\n");}
  else               {warn ("Illegal code for $name: $code\n")}

}

