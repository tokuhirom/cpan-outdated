# NAMES

cpan-outdated - detect outdated CPAN modules in your environment

# SYNOPSIS

    # print list of outdated modules
    % cpan-outdated

    # verbose
    % cpan-outdated --verbose

    # install with cpan
    % cpan-outdated | xargs cpan -i

    # install with cpanm
    % cpan-outdated | xargs cpanm

# DESCRIPTION

This module print list of outdated CPAN modules in your machine.

It's same feature of 'CPAN::Shell->r', but cpan-outdated is so fast and less memory.

This script can integrate with cpanm command.

# DEPENDENCIES

perl 5.8 or later (Actually I believe it works with pre 5.8 too but haven't tested).

- LWP or 'wget' to get a index file over HTTP.

- IO::Zlib or 'zcat' to decode gziped index file.

- version.pm

# AUTHOR

Tokuhiro Matsuno

# LICENSE

Copyright (C) 2009 Tokuhiro Matsuno.

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

# SEE ALSO

[CPAN](http://search.cpan.org/search?mode=module&query=CPAN)
