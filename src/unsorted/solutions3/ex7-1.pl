#!/usr/bin/perl -w

if ($#ARGV<2) {
    print "usgae: ex7-1.pl <block-size> <file-name> <record-number> [value-to-insert]\n";
    exit;
}
($size, $filename, $record, $value) = @ARGV;

$loc = $record*$size;

if (defined($value)) {
  if (length($value)!=$size) {
    print "value ($value) must be $size bytes long\n";
    exit;
  }
  print "writing $value to $filename record $record\n";
  open(FILE, ">>$filename") || die "can not open file $filename: $!\n";
  seek(FILE, $loc, 0) || die "can not seek file $filename to $loc: $!\n";
  print tell(FILE)." $loc";
  print("a"x($loc-tell(FILE))) if (tell(FILE)<$loc);
  print(FILE $value);
} else {
  print "reading record $record from $filename\n";
  open(FILE, "<$filename") || die "can not open file $filename: $!\n";
  seek(FILE, $loc, 0) || die "can not seek file $filename to $loc: $!\n";
  read(FILE, $value, $size)==$size || die "can not read";
  print "DATA:".$value."\n";
}

close FILE;
