# Arrays: basics

- input a list of numeric values.
  print the mean, median, variance of the values.
  all input is from STDIN.
  each number is floating point on it's own line.

Read all input into an array:

```perl
my @lines=<STDIN>;
```

Or one by one:

```perl
my $line;
while($line=<STDIN>) {
    # do something with $line
}
```

## To iterate an array use

```perl
foreach my $word (@words) {
	# do something with $word
}
```
