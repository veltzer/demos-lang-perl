#!/usr/bin/perl

=pod

=cut

use strict;
use warnings;

# this will store the phonebook
# ugly global variables, I know...
my %phonebook;

sub read_phonebook {
	my $fh;
	open($fh,"<","phonebook.txt") || die("problem with open [$!]");
	while(<$fh>) {
		chomp;
		my($name,$phone)=split ',';
		$phonebook{$name}=$phone;
	}
	close($fh) || die("problem with close [$!]");
}

sub write_phonebook {
	my $fh;
	open($fh,">","phonebook.txt") || die("problem with open [$!]");
	while(my($name,$phone)=each(%phonebook)) {
		print $fh "$name,$phone\n";
	}
	close($fh) || die("problem with close [$!]");
}

sub print_phonebook {
	print "This is the phonebook\n";
	print '-' x 40;
	print "\n";
	while(my($name,$phone)=each(%phonebook)) {
		print "name is $name\n";
		print "phone is $phone\n";
	}
}

sub print_menu_get_choice {
	print "\n";
	print "Menu...\n";
	print "================\n";
	print "1) Print the phonebook\n";
	print "2) Search for a name\n";
	print "3) Delete a name\n";
	print "4) Add a name\n";
	print "5) Replace a phone for a name\n";
	print "6) Exit\n";
	print "\n";
	my $input = <STDIN>;
	$input= int $input;
	return $input;
}

sub get_nm {
	my $nm=shift;
	print "Give me a $nm: ";
	flush STDOUT;
	my $res=<STDIN>;
	chomp $res;
	return $res;
}

sub name_exists {
	my $name=shift;
	return exists($phonebook{$name});
}

sub do_add {
	print "doing add\n";
	my $name=get_nm "name";
	if (name_exists $name) {
		print "name [$name] exists\n";
		return;
	}
	my $phone=get_nm "phone";
	$phonebook{$name}=$phone;
	write_phonebook;
}

sub do_delete {
	print "doing delete\n";
	my $name=get_nm "name";
	if (!(name_exists $name)) {
		print "name [$name] does not exist\n";
		return;
	}
	delete $phonebook{$name};
	write_phonebook;
}

sub do_search {
	print "doing search\n";
	my $search=get_nm "search expression";
	#print "search is [$search]\n";
	while(my($name,$phone)=each(%phonebook)) {
		if ($name=~/$search/) {
			print "name is $name\n";
			print "phone is $phone\n";
		}
	}
}

sub do_replace {
	print "doing replace\n";
	my $name=get_nm "name";
	if (!(name_exists $name)) {
		print "name [$name] does not exist\n";
		return;
	}
	my $phone=get_nm "phone";
	$phonebook{$name}=$phone;
	write_phonebook;
}

sub do_exit {
	print "doing exit\n";
}

read_phonebook;
my $input;
do {
	$input=print_menu_get_choice;
	if ($input == 1) {
		print_phonebook;
	}
	elsif ($input == 2) {
		do_search;
	}
	elsif ($input == 3) {
		do_delete;
	}
	elsif ($input == 4) {
		do_add;
	}
	elsif ($input == 5) {
		do_replace;
	}
	elsif ($input == 6) {
		do_exit;
	}
	else {
		print "I don't know what your input means [$input]\n";
	}
} while ($input!=6);
print "Exiting...\n";
