# Exercise 9.3

# Demonstrate BEGIN, END, and AUTOLOAD subroutines

&xyz; # Subroutine doesn't exist

BEGIN {
	print("Program starting\n");
}

AUTOLOAD {
	die("$AUTOLOAD doesn\'t exist!\n");
}

END {
	print("Program ending\n");
}
