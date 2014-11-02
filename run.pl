#!/usr/bin/env perl

use strict;
use warnings;

use FindBin;
use File::Spec;
use lib "$FindBin::Bin/lib";

use DLA::Util;
use XML::LibXML;

$ENV{INSTALL4J_JAVA_HOME_OVERRIDE}="/usr/lib/jvm/java-7-openjdk-amd64/jre/";
$DLA::Util::lapdftext_path=File::Spec->catfile($FindBin::Bin,
qw(ext lapdftext_unix_1_7_4-SNAPSHOT lapdftext));

my $d = DLA::Util->blockify_xml_data('test-pdf/hearst98-SVMtutorial.pdf');

my $dom = XML::LibXML->load_xml(string => $d);
use DDP; p $dom;
#use DDP; p $d;


