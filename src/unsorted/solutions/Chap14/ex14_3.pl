# Exercise 14.3

# Process data file using hash references

while ($record = <>) {
  chomp($record);
  ($acct, $name, $ssn, $bal) = split(/,\s+/, $record);
  $table{$acct} = [$name, $ssn, $bal];
}

for $acctno (sort keys(%table)) {
  print($acctno, ": ",
        &getname($acctno, \%table), " ",
        &getssn( $acctno, \%table), " ",
        &getbal( $acctno, \%table), "\n");
}

sub getname {
  my($acctno, $tabref) = @_;
  return $tabref->{$acctno}[0];
}

sub getssn {
  my($acctno, $tabref) = @_;
  return $tabref->{$acctno}[1];
}

sub getbal {
  my($acctno, $tabref) = @_;
  return $tabref->{$acctno}[2];
}
