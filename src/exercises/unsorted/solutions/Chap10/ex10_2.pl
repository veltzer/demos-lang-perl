# Exercise 10.2

# Format multiple lines on as few lines as possible

my(@lines) = <>;
my($string) = join("", @lines);
# format OUTPUT =
# ~~ ^<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
# $string
# .
# 
# $~ = OUTPUT;
write;
