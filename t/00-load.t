#!/usr/bin/env perl

use Test::More tests => 7;

BEGIN {
    use_ok('DBI');
    use_ok('URI');
    use_ok('HTML::Template');
    use_ok('HTML::Entities');
    use_ok('Storable');
    use_ok('Mail::Send');

	use_ok( 'App::ZofCMS::Plugin::Comments' );
}

diag( "Testing App::ZofCMS::Plugin::Comments $App::ZofCMS::Plugin::Comments::VERSION, Perl $], $^X" );
