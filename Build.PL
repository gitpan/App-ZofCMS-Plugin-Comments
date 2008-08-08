use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::ZofCMS::Plugin::Comments',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/App/ZofCMS/Plugin/Comments.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'DBI'            => 1.602,
        'URI'            => 1.35,
        'HTML::Template' => 2.9,
        'HTML::Entities' => 1.35,
        'Storable'       => 2.18,
        'Mail::Send'     => 2.04,
    },
    add_to_cleanup      => [ 'App-ZofCMS-Plugin-Comments-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
