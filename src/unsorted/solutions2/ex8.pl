#!/usr/bin/perl -w

$url = "http://www.google.com:80/test/test.html?id=1";
$url = "http://www.google.com/test/test.html?id=1";

$url =~ m!^(.*)://([^:/]*)(:(\d+))?/([^?]*)(\?(.*))?$!;
@p = ($1,$2,$4,$5,$7);
print "@p\n";
