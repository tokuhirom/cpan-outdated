use strict;
use warnings;
use Test::More tests => 6;

$ENV{HARNESS_ACTIVE} ||= 1;

do 'script/cpan-outdated' or die;
is permissive_filter('V2.0'), '2.0';
is permissive_filter('0_02'), '0.02';
is permissive_filter('0.035-withoutworldwriteables'), '0.035';
is permissive_filter('0.20b'), '0.201';
is permissive_filter('1.50.2vs.070506'), '1.50.2.070506';
is permissive_filter('1..50.2'), '1.50.2';
