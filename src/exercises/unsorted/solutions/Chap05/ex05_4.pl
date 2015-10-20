# Exercise 5.4

# Reverse Polish Notation calculator

print("RPN Calculator\n");

while (1) {
	print("> ");
	$in = <STDIN>;
	chop($in);
	if ($in eq "*") {
		push(@stack, pop(@stack) * pop(@stack));
	} elsif ($in eq "/") {
		push(@stack, 1 / pop(@stack) * pop(@stack));
	} elsif ($in eq "+") {
		push(@stack, pop(@stack) + pop(@stack));
	} elsif ($in eq "-") {
		push(@stack, -(pop(@stack)) + pop(@stack));
	} elsif ($in eq "=") {
		print(pop(@stack), "\n");
	} elsif ($in eq "c") {
		pop(@stack);
	} elsif ($in eq "x") {
		last;
	} else {
		push(@stack, $in);
	}
}
