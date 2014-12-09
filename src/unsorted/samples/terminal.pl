#!/usr/bin/perl -w

select(STDIN);
$|=1;
select (STDOUT);

system "stty -echo -icanon eol \001";    # char at a time, no echo

$c=1;
while(ord($c)!=4) {
	$c=getc(STDIN);
	print($c);
	#print ("-$c",ord($c));
}
