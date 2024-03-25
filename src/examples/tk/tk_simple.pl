#!/usr/bin/perl -w

=head

This is the most example perl tk example.

=cut

use strict;
use warnings;

use Tk;

my $main = MainWindow->new();
my $button = $main->Button(-text => "Click me", -command => sub {$main->destroy()});
$button->pack();
Tk::MainLoop();
print "after main loop\n";
