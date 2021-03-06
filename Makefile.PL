use inc::Module::Install 1.00;

if ( -e 'MANIFEST.SKIP' ) {
    system( 'pod2text lib/WWW/Wikipedia.pm > README' );
}

perl_version '5.006';

name 'WWW-Wikipedia';
all_from 'lib/WWW/Wikipedia.pm';

requires 'LWP::UserAgent';
requires 'LWP::Protocol::https';
requires 'URI';
requires 'Text::Autoformat';
requires 'Pod::Usage';

test_requires 'Test::More';

install_script 'bin/wikipedia';

repository 'https://github.com/edsu/www-wikipedia';

WriteAll;
