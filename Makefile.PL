use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'App::cpanoutdated',
    VERSION_FROM => "lib/App/cpanoutdated.pm",
    LICENSE      => 'perl',
    PREREQ_PM    => {
        'LWP'                 => 0,
        'IO::Zlib'            => 0,
        'version'             => 0,
        'local::lib'          => 1.006008,
        'ExtUtils::MakeMaker' => 6.56,
        'CPAN::DistnameInfo'  => 0.10,
    },
    EXE_FILES => ['bin/cpan-outdated'],
	MIN_PERL_VERSION => '5.008001',
    ( -d '.git' || $ENV{RELEASE_TESTING} )
    ? ( test => { TESTS => 't/*.t xt/*.t', }, )
    : (),
);
