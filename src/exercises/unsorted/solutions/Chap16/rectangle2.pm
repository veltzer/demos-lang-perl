package rectangle2;

use strict;
use warnings;

=pod

=cut

my $COUNT = 0; # Class data member

# Constructor
sub new {
	my $this = shift;
	my $class = ref($this) || $this;
	my $data = {};
	$data->{HEIGHT} = shift;
	$data->{WIDTH} = (@_ == 1) ? shift : $data->{HEIGHT};
	$COUNT++; # Increment the count
	bless($data, $class);
	return $data;
}

# Destructor
sub DESTROY {
	$COUNT--; # Decrement the count
}

# Class method

sub getcount {
	return $COUNT;
}

# Instance methods

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
