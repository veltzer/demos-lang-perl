#!/usr/bin/perl

=pod:

=cut

use strict;
use warnings;

use Plane;
use F16;

my($plane) = new Plane("bla", 8);

print $plane->fuel,"\n";
$plane->fuel(25);
print $plane->fuel,"\n";

my($f16) = new F16("bla", 8, 100);

print ref($plane), "\n";
print $f16->missiles,"\n";
$f16->missiles(200);
print $f16->missiles,"\n";

print $f16->fuel,"\n";

Plane::fuel($f16);
