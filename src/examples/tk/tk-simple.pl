#!/usr/bin/perl -w

use Tk;

$main = MainWindow->new();

$button = $main->Button(-text => "Click me");

$button->pack();

Tk::MainLoop;
