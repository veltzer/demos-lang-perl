package box;

require rectangle;
@ISA = (rectangle);

sub new {
	my $class = shift;
	my $data = {};
	$data = rectangle->new(shift, shift); # Create a base class object
	$data->{DEPTH} = (@_ > 0) ? shift : 0; # Derived class data member
	bless($data, $class);
	return $data;
}

sub volume {
	my $data = shift;
	return $data->{DEPTH} * $data->area();
}
