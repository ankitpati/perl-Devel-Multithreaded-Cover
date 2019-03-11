# Copyright 2001-2018, Paul Johnson (paul@pjcj.net)

# This software is free.  It is licensed under the same terms as Perl itself.

# The latest version of this software should be available from my homepage:
# http://www.pjcj.net

package Devel::Multithreaded::Cover::Report::Html;

use strict;
use warnings;

# VERSION

use base "Devel::Multithreaded::Cover::Report::Html_minimal";

1;

__END__

=head1 NAME

Devel::Multithreaded::Cover::Report::Html - HTML backend for Devel::Multithreaded::Cover

=head1 SYNOPSIS

 cover -report html

=head1 DESCRIPTION

This module provides a HTML reporting mechanism for coverage data.  It
is designed to be called from the C<cover> program.  This is an empty
class derived from the default HTML output module,
Devel::Multithreaded::Cover::Report::Html_minimal.

=head1 SEE ALSO

 Devel::Multithreaded::Cover

=head1 BUGS

Huh?

=head1 LICENCE

Copyright 2001-2018, Paul Johnson (paul@pjcj.net)

This software is free.  It is licensed under the same terms as Perl itself.

The latest version of this software should be available from my homepage:
http://www.pjcj.net

=cut
