# Copyright 2004-2018, Paul Johnson (paul@pjcj.net)

# This software is free.  It is licensed under the same terms as Perl itself.

# The latest version of this software should be available from my homepage:
# http://www.pjcj.net

package Devel::Multithreaded::Cover::Subroutine;

use strict;
use warnings;

# VERSION

use base "Devel::Multithreaded::Cover::Criterion";

sub uncoverable { $_[0][2]               }
sub covered     { $_[0][0]               }
sub total       { 1                      }
sub percentage  { $_[0][0] ? 100 : 0     }
sub error       { $_[0][0] xor !$_[0][2] }
sub name        { $_[0][1]               }
sub criterion   { "subroutine"           }

1

__END__

=head1 NAME

Devel::Multithreaded::Cover::Statement - Code coverage metrics for Perl

=head1 SYNOPSIS

 use Devel::Multithreaded::Cover::Statement;

=head1 DESCRIPTION

Module for storing subroutine coverage information.

=head1 SEE ALSO

 Devel::Multithreaded::Cover::Criterion

=head1 METHODS

=head1 BUGS

Huh?

=head1 LICENCE

Copyright 2004-2018, Paul Johnson (paul@pjcj.net)

This software is free.  It is licensed under the same terms as Perl itself.

The latest version of this software should be available from my homepage:
http://www.pjcj.net

=cut
