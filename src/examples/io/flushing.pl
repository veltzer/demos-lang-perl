#!/usr/bin/perl -w

print 'a';
sleep 1;
print 'b';
sleep 1;
print 'c';
flush STDOUT;
sleep 1;
print 'd';
sleep 1;
print "\n";
