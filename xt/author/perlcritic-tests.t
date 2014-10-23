#!/usr/bin/env perl

#      $URL: http://perlcritic.tigris.org/svn/perlcritic/trunk/Perl-Critic-Compatibility/xt/author/perlcritic-tests.t $
#     $Date: 2008-05-09 10:51:28 -0500 (Fri, 09 May 2008) $
#   $Author: clonezone $
# $Revision: 2333 $

use 5.006;

use strict;
use warnings;

use version; our $VERSION = qv('v1.0.0');

use Test::Perl::Critic (
    -severity => 1,
    -profile => 'xt/author/perlcriticrc-tests'
);

all_critic_ok( qw< t xt > );

# setup vim: set filetype=perl tabstop=4 softtabstop=4 expandtab :
# setup vim: set shiftwidth=4 shiftround textwidth=78 nowrap autoindent :
# setup vim: set foldmethod=indent foldlevel=0 :
