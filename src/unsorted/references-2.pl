#!/usr/bin/perl -w

my($mat1) = [[1, 2], [3, 4]];
my($mat2) = [[5, 6], [7, 8]];

my($mat3) = add_mat($mat1, $mat2);

print_mat($mat3);

sub add_mat
{
	my ($mat1, $mat2) = @_;
	my $mat3;
	
	for (my $i = 0; $i < @$mat1; $i++) {
		for (my $j = 0; $j < @{ $mat1->[$i] }; $j++) {
			$mat3->[$i][$j] = $mat1->[$i][$j] + $mat2->[$i][$j];
		}
	}
	return $mat3
}

sub print_mat
{
	my $mat = shift;
	for (my $i = 0; $i < @$mat; $i++) {
		print join(" ", @{ $mat->[$i] }), "\n";
	}
}
