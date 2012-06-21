use strict;
use warnings;
use utf8;
use Test::More;
use App::cpanoutdated;

my $ver = sub {
    open my $fh, '<', 'bin/cpan-outdated' or die $!;
    while (<$fh>) {
        if (/VERSION\s=\s(["'])([^"']+)\1/) {
            return $2;
        }
    }
    undef;
}->();
is($ver, $App::cpanoutdated::VERSION);

done_testing;

