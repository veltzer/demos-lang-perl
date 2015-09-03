package F16;

@ISA = (Plane);

sub new
{
	my ($pkg, $name, $fuel, $missiles) = @_;

	$this = $pkg->SUPER::new($name, $fuel);
	print "REF2:", ref($this), "\n";
	$this->{"missiles"} = $missiles;
	return $this;
}

sub fuel
{
	$this = shift;
	print "F16 can't fuel...\n";
}

sub missiles
{
	$this = shift;
	@_ ? $this->{"missiles"} = shift : $this->{"missiles"};
}
