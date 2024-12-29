#!/usr/bin/perl

=pod

Example of how to use a third party module, in this case the GitHub module.

=cut

# uses
use strict;
use warnings;

use Net::GitHub;
use Config::IniFiles;
use File::HomeDir;

# code

my($cfg)=Config::IniFiles->new( -file => File::HomeDir->my_home.'/.github.ini' ) or die('unable to access ini file');
my($param_login)=$cfg->val('github', 'login');
my($param_pass)=$cfg->val('github', 'pass');

my($github)=Net::GitHub->new(
	login => $param_login,
	pass => $param_pass,
);
my(@repos)=$github->repos->list;
for(my($i)=0; $i<$#repos; $i++) {
	my($curr)=$repos[$i];
	print $curr->{name}.': '.$curr->{description}."\n";
}
