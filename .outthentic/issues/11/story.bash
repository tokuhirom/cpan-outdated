#!bash

set -e
set -x

cpanm Tk --notest -q
cpanm Tk --notest -q

cpanm S/SR/SREZIC/Tk-804.033.tar.gz --notest

set +x

echo start
cpan-outdated | grep Tk
echo end
