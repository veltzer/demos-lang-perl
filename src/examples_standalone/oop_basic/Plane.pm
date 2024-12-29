package Plane;

use strict;
use warnings;

=pod

=cut

sub new
{
	my ($pkg, $name, $fuel) = @_;

	my $data = {"name" => $name, "fuel" => $fuel};
	bless($data, $pkg);
	return $data;
}

sub fuel
{
	my $this = shift;
	print "Plane fuel!\n";
	@_ ? $this->{"fuel"} = shift : return $this->{"fuel"};
}

1;
