use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'App::cpanoutdated',
    VERSION_FROM => "cpan-outdated",
    PREREQ_PM    => {
        'LWP'      => 0,
        'IO::Zlib' => 0,
    },
    EXE_FILES => ['cpan-outdated'],
);
