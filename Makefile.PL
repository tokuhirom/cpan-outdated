use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'App::cpanoutdated',
    VERSION_FROM => "lib/App/cpanoutdated.pm",
    PREREQ_PM    => {
        'LWP'      => 0,
        'IO::Zlib' => 0,
        'version'  => 0,
    },
    EXE_FILES => ['cpan-outdated'],
);
