package F16;

use strict;
use warnings;

=pod

=cut

my @ISA = ("Plane");

sub new
{
	my ($pkg, $name, $fuel, $missiles) = @_;

	my $this = $pkg->SUPER::new($name, $fuel);
	print "REF2:", ref($this), "\n";
	$this->{"missiles"} = $missiles;
	return $this;
}

sub fuel
{
	my $this = shift;
	print "F16 can't fuel...\n";
}

sub missiles
{
	my $this = shift;
	@_ ? $this->{"missiles"} = shift : $this->{"missiles"};
}

1;
