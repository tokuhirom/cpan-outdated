use strict;
use warnings;

use Test::More;
eval {
    require local::lib;
    1;
} or plan skip_all => 'local::lib not available';

plan tests => 1;

$ENV{HARNESS_ACTIVE} ||= 1;
do './script/cpan-outdated' or die;

is_deeply [
	local::lib->install_base_perl_path( 't/perl5' ),
	local::lib->install_base_arch_path( 't/perl5' ),
    ],
    [ make_inc( 't/perl5', undef, 1 ) ],
    'Only specified local::lib directories';

