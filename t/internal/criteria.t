use strict;
use warnings;

use Test::More;

if ($] < 5.010000) {
    plan skip_all => "Perl version $] is not supported";
} if ($] == 5.015006) {
    plan skip_all => "5.15.6 throws too many erroneous warnings";
} else {
    require Devel::Multithreaded::Cover;
    Devel::Multithreaded::Cover->import(qw( -silent 1 ));
    plan tests => 5;
}

Devel::Multithreaded::Cover::set_coverage("none");
is Devel::Multithreaded::Cover::get_coverage(),
   "",
   "Set coverage to none empties coverage";

Devel::Multithreaded::Cover::set_coverage("all");
is Devel::Multithreaded::Cover::get_coverage(),
   "branch condition path pod statement subroutine time",
   "Set coverage to all fills coverage";

Devel::Multithreaded::Cover::remove_coverage("path");
is Devel::Multithreaded::Cover::get_coverage(),
   "branch condition pod statement subroutine time",
   "Removing path coverage works";

{
    my $warning;
    local $SIG{__WARN__} = sub { $warning = shift };
    Devel::Multithreaded::Cover::add_coverage("does_not_exist");
    like $warning,
         qr/Devel::Multithreaded::Cover: Unknown coverage criterion "does_not_exist" ignored./,
         "Adding non-existent coverage warns";
}
is Devel::Multithreaded::Cover::get_coverage(),
   "branch condition pod statement subroutine time",
   "Adding non-existent coverage has no effect";
