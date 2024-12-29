# Exercise 3.1 - Select a language in which to be greeted

=pod

=cut

use strict;
use warnings;

print("Choose a language:\n\n");
print(" 1 - English\n");
print(" 2 - Australian\n");
print(" 3 - Spanish\n");
print(" 4 - French\n\n");
print("Your choice (1-4)? ");

my($choice) = <STDIN>;
chop($choice);

if ($choice == 1) {print("\nHello\n");}
elsif ($choice == 2) {print("\nG'day\n");}
elsif ($choice == 3) {print("\nBuenos dias\n");}
elsif ($choice == 4) {print("\nBonjour\n");}
else {die("\nIllegal choice: $choice\n")}
