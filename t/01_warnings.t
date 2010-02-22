use strict;
use Test::More tests => 4;

local $ENV{HARNESS_ACTIVE} = 1; # hedge

do 'cpan-outdated';

my $warn = 0;
local $SIG{__WARN__} = sub { $warn++ };
CPAN::Version->vlt('0.7.5', '0.007005');
is CPAN::Version->vcmp('0.1', '0.1'), 0;
is CPAN::Version->vcmp('0.1', '0.2'), -1;
is CPAN::Version->vcmp('0.2', '0.1'), 1;
is $warn, 0, 'no warnings';

