#!/usr/bin/perl -w

=head

=cut

use strict;
use warnings;

my(@data);
$data[0][0]{"x"} = 1;
$data[0][0]{"y"} = 2;
$data[0][1]{"z"} = 3;
$data[1][0]{"ptr"} = \$data[0][1];
$data[0][1]{"new"} = 4;
