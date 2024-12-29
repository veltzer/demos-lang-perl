#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

my($url);
$url = "http://www.google.com:80/test/test.html?id=1";
$url = "http://www.google.com/test/test.html?id=1";

$url =~ m!^(.*)://([^:/]*)(:(\d+))?/([^?]*)(\?(.*))?$!;
my(@p) = ($1,$2,$4,$5,$7);
print "@p\n";
