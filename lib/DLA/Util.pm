package DLA::Util;

use strict;
use warnings;

use Path::Class;

our $lapdftext_path;

sub blockify_xml_file {
	my ($self, $pdf_file) = @_;
	my $dir = Path::Class::tempdir(CLEANUP => 1);
	my $blockify = dir($lapdftext_path)->file('blockify');
	my $full_pdf_file = file($pdf_file)->absolute;
	system($blockify, $full_pdf_file, $dir);
	my $xml;
	while (my $file = $dir->next) {
		# $file is a Path::Class::File or Path::Class::Dir object
		if(-f $file) {
			$xml = $file;
			last;
		}
	}
	die "XML block file not generated" unless defined $xml;

	return $xml;
}

sub blockify_xml_data {
	my $self = shift;
	my $xml = $self->blockify_xml_file(@_);
	my $xml_data = $xml->slurp(iomode => '<:encoding(UTF-8)');

	return $xml_data;
}

1;
