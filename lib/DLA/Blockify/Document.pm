package DLA::Blockify::Document;

use strict;
use warnings;

use XML::Rabbit::Root;

has_xpath_object_list fonts => '/document/fontStyles/fontStyle' => 'DLA::Blockify::FontStyle';

has_xpath_object_list pages => '/document/pages/page' => 'DLA::Blockify::Page';


finalize_class();

1;
