#!perl

#      $URL: http://perlcritic.tigris.org/svn/perlcritic/trunk/Perl-Critic-Compatibility/Build.PL $
#     $Date: 2008-04-13 13:21:52 -0500 (Sun, 13 Apr 2008) $
#   $Author: clonezone $
# $Revision: 2221 $

use 5.006;

use strict;
use warnings;

use English qw< -no_match_vars >;

use Module::Build;


my $class = Module::Build->subclass( code => <<'END_SUBCLASS' );

    sub ACTION_authortest {
        my $self = shift;

        $self->depends_on('build');
        $self->depends_on('manifest');
        $self->depends_on('distmeta');
        $self->recursive_test_files(1);
        $self->depends_on('test');

        return;
    } # end ACTION_authortest()

    sub ACTION_distdir {
        my $self = shift;

        $self->depends_on('authortest');

        return $self->SUPER::ACTION_distdir();
    } # end ACTION_distdir

END_SUBCLASS

my $builder = $class->new(
    module_name     => 'Perl::Critic::Compatibility',
    license         => 'perl',
    dist_author     => 'Elliot Shank <perl@galumph.com>',
    dynamic_config  => 0,
    build_requires  => {
        'Test::More'    => 0,
    },
    requires => {
        'Perl::Critic'  => '1.083_001',
        'version'       => 0,
    },
    recommends      => {
    },
    create_packlist    => 1,
    sign               => 0,
    create_makefile_pl => 'traditional',
    add_to_cleanup     => [
        qw<
            MANIFEST
            MANIFEST.bak
            META.yml
            Makefile
            Makefile.PL
            pod2htm?.tmp
            Perl-Critic-Compatibility-*
        >
    ],
);


$builder->create_build_script();

# setup vim: set filetype=perl tabstop=4 softtabstop=4 expandtab :
# setup vim: set shiftwidth=4 shiftround textwidth=78 nowrap autoindent :
# setup vim: set foldmethod=indent foldlevel=0 :
