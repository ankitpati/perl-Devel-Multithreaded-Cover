# Copyright 2001-2018, Paul Johnson (paul@pjcj.net)

# This software is free.  It is licensed under the same terms as Perl itself.

# The latest version of this software should be available from my homepage:
# http://www.pjcj.net

package Devel::Multithreaded::Cover::Condition_and_3;

use strict;
use warnings;

# VERSION

use base "Devel::Multithreaded::Cover::Condition";

sub count   { 3                     }
sub headers { [qw( !l l&&!r l&&r )] }

1

__END__

=head1 NAME

Devel::Multithreaded::Cover::Condition_and_3 - Code coverage metrics for Perl

=head1 SYNOPSIS

 use Devel::Multithreaded::Cover::Condition_and_3;

=head1 DESCRIPTION

Module for storing condition coverage information for or conditions
where the right value is a constant.

=head1 SEE ALSO

 Devel::Multithreaded::Cover::Condition

=head1 METHODS

=head1 BUGS

Huh?

=head1 LICENCE

Copyright 2001-2018, Paul Johnson (paul@pjcj.net)

This software is free.  It is licensed under the same terms as Perl itself.

The latest version of this software should be available from my homepage:
http://www.pjcj.net

=cut
