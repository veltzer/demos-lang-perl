# Exercise 6.3

# Add and average employee hours

# Read input
@input = <STDIN>;
chomp(@input);

# Process the list
foreach $line (@input){
	($empno, $hrs) = split(/ /, $line);
	$hours{$empno} += $hrs;
	$periods{$empno}++;
}

# Print report
foreach $empno (sort(keys(%hours))) {
	unless ($empno eq "") {
	print("$empno\t$periods{$empno}\t$hours{$empno}\t",
		$hours{$empno}/$periods{$empno}, "\n");
	}
}
