use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'App::cpanoutdated',
    VERSION_FROM => "lib/App/cpanoutdated.pm",
    PREREQ_PM    => {
        'LWP'      => 0,
        'IO::Zlib' => 0,
        'version'  => 0,
        'local::lib' => 0,
        'ExtUtils::MakeMaker' => 6.56,
		'CPAN::DistnameInfo' => 0.10,
    },
    EXE_FILES => ['bin/cpan-outdated'],
);
