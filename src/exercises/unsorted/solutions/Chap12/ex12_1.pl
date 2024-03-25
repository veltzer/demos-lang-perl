# Exercise 12.1

# Parent-child processes

$SIG{"TERM"} = \&TERM_handler; # Register signal handler # Register signal handler
if (my($pid) = fork()) {
	# Parent process
	sleep(3); # Sleep 3 seconds # Wait 3 seconds
	kill("TERM", $pid); # Send the TERM signal to the child process # Send termination signal
	wait(); # Wait for the child to die # Wait for child to die
	die("Parent exiting...\n"); # Exit # Exit
} else {
	# Child process
	while (1) { # Go into a sleep loop until interrupted # Go into infinite sleep
		sleep(5); # by the TERM signal from the parent process # loop and wait for signal
	}
}

sub TERM_handler { # TERM signal handler
	die("Child exiting...\n"); # Exit
}
