package DLA::Blockify::Chunk;

use strict;
use warnings;

use XML::Rabbit;

has_xpath_object_list words => './words/wd' => 'DLA::Blockify::Word';

finalize_class();

1;

package DLA::Blockify::Word;

use strict;
use warnings;

use XML::Rabbit;

has_xpath_value text => './@t';
has_xpath_value width => './@w';
has_xpath_value height => './@h';
has_xpath_value x => './@x';
has_xpath_value y => './@y';

has_xpath_value _font_id => './@fid';

finalize_class();

1;
