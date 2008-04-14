#!/usr/bin/env perl

#      $URL: http://perlcritic.tigris.org/svn/perlcritic/trunk/Perl-Critic-Compatibility/t/author/pod_syntax.t $
#     $Date: 2008-04-13 13:21:52 -0500 (Sun, 13 Apr 2008) $
#   $Author: clonezone $
# $Revision: 2221 $

use 5.006;

use strict;
use warnings;

use version; our $VERSION = qv('v1.0.0');

use Test::More;
use Test::Pod;

all_pod_files_ok();

# setup vim: set filetype=perl tabstop=4 softtabstop=4 expandtab :
# setup vim: set shiftwidth=4 shiftround textwidth=78 nowrap autoindent :
# setup vim: set foldmethod=indent foldlevel=0 :