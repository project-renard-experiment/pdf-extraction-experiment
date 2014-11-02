#!/usr/bin/env perl

use strict;
use warnings;

use FindBin;
use File::Spec;
use lib "$FindBin::Bin/lib";

use DLA::Util;
use XML::LibXML;
use DLA::Blockify::Document;

$ENV{INSTALL4J_JAVA_HOME_OVERRIDE}="/usr/lib/jvm/java-7-openjdk-amd64/jre/";
$DLA::Util::lapdftext_path=File::Spec->catfile($FindBin::Bin,
qw(ext lapdftext_unix_1_7_4-SNAPSHOT lapdftext));

my $doc_xml_file ;#= DLA::Util->blockify_xml_file('test-pdf/hearst98-SVMtutorial.pdf');
$doc_xml_file = 'test-pdf/hearst98-SVMtutorial_lapdf.xml';
my $doc = DLA::Blockify::Document->new( file => $doc_xml_file );
use DDP; p $doc;
my $fonts = $doc->fonts;
#my @names = map { $_->name } @$fonts;
#use DDP; p @names;
my $pages = $doc->pages;
my @t = map { $_->text} @{ $pages->[0]->chunks->[0]->words };
use DDP; p @t;
#my $dom = XML::LibXML->load_xml(string => $d);
#use DDP; p $dom;
#use DDP; p $d;


