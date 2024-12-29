#!/usr/bin/perl -w

=head

This example shows how to access command line arguments from within a perl script.
The list named '@ARGV' is global and has all the arguments.
The name of the script is NOT part of @ARGV. instead it is $0.
You may use $0 to write a name aware script that may be used for multiple purposes at once.
The example also shows that @ARGV and $0 are both assignable (although that is not advised).

=cut

use strict;
use warnings;

print "\$0 is $0\n";
print "ARGV is @ARGV\n";
@ARGV = ('a', 'b');
$0 = 'foobar';
print "\$0 is $0\n";
print "ARGV is @ARGV\n";
