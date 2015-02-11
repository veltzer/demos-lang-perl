package rectangle;
use strict;

# Constructor
sub new {
	my $this = shift;
	my $class = ref($this) || $this;
	my $data = {};
	$data->{HEIGHT} = shift;
	$data->{WIDTH} = (@_ == 1) ? shift : $data->{HEIGHT};
	bless($data, $class);
	return $data;
}

sub height {
	my $data = shift;
	$data->{HEIGHT} = shift if (@_);
	return $data->{HEIGHT};
}

sub width {
	my $data = shift;
	$data->{WIDTH} = shift if (@_);
	return $data->{WIDTH};
}

sub area {
	my $data = shift;
	return $data->{HEIGHT} * $data->{WIDTH};
}

1;
