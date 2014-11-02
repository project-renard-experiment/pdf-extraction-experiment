package DLA::Blockify::FontStyle;

use strict;
use warnings;

use XML::Rabbit;

has_xpath_value name => './@fontStyle';

has_xpath_value id => './@id';

finalize_class;

1;
