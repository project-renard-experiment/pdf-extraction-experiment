package DLA::Blockify::Page;

use strict;
use warnings;

use XML::Rabbit;

has_xpath_value page_number => './@pageNumber';

has_xpath_value height => './@h';
has_xpath_value width => './@w';

has_xpath_object_list chunks => './chunks/chunk' => 'DLA::Blockify::Chunk';

finalize_class();

1;
