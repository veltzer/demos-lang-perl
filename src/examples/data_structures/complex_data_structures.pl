#!/usr/bin/perl

=pod

This is an example of creating a complex data structure in perl

=cut

use strict;
use warnings;

my(%company) = (
	SALES => {
		VP => 'McClure',
		TEAM => [
			{ NAME => 'Stefannson', COMMISSION => .15 },
			{ NAME => 'Franklin', COMMISSION => .17 },
		]
	},
	TECH_SUPT => {
		VP => 'Hall',
		DIVISIONS => [
			{
				NAME => 'Nanson',
				DISTRICTS => [
					{ NAME => 'Greely', SALARY => 54000 },
					{ NAME => 'Bartlett', SALARY => 54000 },
				]
			},
		],
	},
);

# give Greely a 6% raise
$company{TECH_SUPT}{DIVISIONS}[0]{DISTRICTS}[0]{SALARY} *= 1.06;
# print his salary
print "$company{TECH_SUPT}{DIVISIONS}[0]{DISTRICTS}[0]{SALARY}\n";
