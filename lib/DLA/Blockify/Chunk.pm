package DLA::Blockify::Chunk;

use strict;
use warnings;

use XML::Rabbit;

has_xpath_object_list words => './words/wd' => 'DLA::Blockify::Word';

finalize_class();

1;
