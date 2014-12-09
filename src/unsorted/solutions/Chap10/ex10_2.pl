# Exercise 10.2

# Format multiple lines on as few lines as possible

format OUTPUT =
~~ ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
$string
.

@lines = <>;
$string = join("", @lines);
$~ = OUTPUT;
write;
