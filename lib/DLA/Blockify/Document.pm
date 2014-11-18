package DLA::Blockify::Document;

use strict;
use warnings;

use XML::Rabbit::Root;

has_xpath_object_map font_map => '/document/fontStyles/fontStyle',
	'./@id' => 'DLA::Blockify::FontStyle',
	handles => {
		get_font_by_id => 'get'
	};

has_xpath_object_list pages => '/document/pages/page' => 'DLA::Blockify::Page';


finalize_class();

1;
