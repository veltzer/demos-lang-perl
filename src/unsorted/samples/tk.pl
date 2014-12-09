#!/usr/bin/perl -w

use Tk;

sub buttonhandler
{
	print "Button clicked!\n";
	$main2 = MainWindow->new();
	$button2 = $main2->Button(-text => "Another button");
	$button2->pack();
}

$main = MainWindow->new();

$button = $main->Button(-text => "Click me");
$button->configure("-command" => \&buttonhandler );

$button->pack();

Tk::MainLoop;
