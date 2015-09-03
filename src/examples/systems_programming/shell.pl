#!/usr/bin/perl -w

=head

This is an exmple of how easy it is to implement a shell in perl using the <> (diamond) operator
and the 'eval' function.

=cut

while (<>) {
	print eval($_);
}
