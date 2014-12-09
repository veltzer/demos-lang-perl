package PeopleDB;

sub load_db {
	my $file = shift;
	my %peopleDB;
	open(DATA, $file) || die "can't open $file: $!\n";

	while (<DATA>) {
		chomp;
		next if (/^#/);
		next if (/^\s*$/);
		my ($ID, $name, $age, $spouseID, $kidsIDs) = split ":";
		$peopleDB{$ID} = {
			NAME   => $name,
			AGE    => $age,
			SPOUSE => $spouseID,
			KIDS   => $kidsIDs
			};
	}

	# Pass a second time to replace the IDs with references

	foreach $ID (keys %peopleDB) {
		# Resolve the spouse
		$peopleDB{$ID}{SPOUSE} = $peopleDB{ $peopleDB{$ID}{SPOUSE} };
		# Resolve the kids
		my @kids = split(",", $peopleDB{$ID}{KIDS});
		foreach my $kid (@kids) {
			$kid = $peopleDB{$kid};
		}
		$peopleDB{$ID}{KIDS} = \@kids;
	}

	return \%peopleDB;
}

sub print_db
{
	my $peopleDB = shift;

	foreach my $ID (sort keys %$peopleDB) {
		my $person = $peopleDB->{$ID};
		print "------------\n";
		print "ID: $ID\n";
		print "Name: ", $person->{NAME}, "\n";
		print "Age: ", $person->{AGE}, "\n";
		if (defined($person->{SPOUSE}{NAME})) {
			print "Spouse name: ", $person->{SPOUSE}{NAME}, "\n";
		}
		foreach my $kid (@{ $person->{KIDS} }) {
			print "Kid: ", $kid->{NAME}, "\n";
		}
	}
}

1;
