use strict;
use warnings;
use Test::More tests => 7;

$ENV{HARNESS_ACTIVE} ||= 1;

do './script/cpan-outdated' or die;
is compare_version('1.0', '1.0'), 0;
is compare_version('1.0', '0.9'), 0;
is compare_version('0.8', '0.9'), 1;
is compare_version('1.0a', '2.0a'), 1;
is compare_version('1.0a', '1.0a'), 0;
is compare_version('1.0a', '1.0b'), 1;
is compare_version('1.0c', '1.0b'), 0;

