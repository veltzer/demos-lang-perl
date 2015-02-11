#!/usr/bin/perl -w

my($random)=rand(1);
if($random<0.5) {
	print "success\n";
} else {
	print "error\n";
}
exit 0;
