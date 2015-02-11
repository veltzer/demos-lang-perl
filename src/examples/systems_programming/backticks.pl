#!/usr/bin/perl -w

use strict;
use diagnostics;

my(@output)=`ps -ef`;
print @output;
