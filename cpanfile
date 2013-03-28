requires 'perl', '5.008001';

requires 'CPAN::DistnameInfo', '0.1';
requires 'ExtUtils::MakeMaker', '6.56';
requires 'IO::Zlib';
requires 'LWP';
requires 'Module::CoreList';
requires 'Module::Metadata', '1.000007';
requires 'local::lib', '1.006008';
requires 'version';

on configure => sub {
    requires 'Module::Build::Tiny';
};

on build => sub {
    requires 'ExtUtils::MakeMaker';
};
