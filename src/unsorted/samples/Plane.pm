package Plane;

sub new
{
	my ($pkg, $name, $fuel) = @_;

	$data = {"name" => $name, "fuel" => $fuel};
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
