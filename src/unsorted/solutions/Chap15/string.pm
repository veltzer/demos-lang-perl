
package string;
require Exporter;
@ISA = qw(Exporter);
@EXPORT = qw(revstr sortstr shiftpushstr popunshiftstr);

sub revstr {
	return join("", reverse split(//,$_[0]));
}

sub sortstr {
	return join("",sort split(//,$_[0]));
}

sub shiftpushstr {
	my(@chars);
	@chars = split(//,$_[0]);
	push(@chars, shift(@chars));
	return join("",@chars);
}

sub popunshiftstr {
	my(@chars);
	@chars = split(//,$_[0]);
	unshift(@chars, pop(@chars));
	return join("",@chars);
}