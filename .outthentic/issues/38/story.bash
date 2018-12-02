#!bash

set -e
set -x

cpanm Math::BigInt --notest -q
cpanm Math::BigInt --notest -q

cpanm P/PJ/PJACKLAM/Math-BigInt-1.999813.tar.gz -n

set +x

echo start
cpan-outdated | grep Math-BigInt
echo end
