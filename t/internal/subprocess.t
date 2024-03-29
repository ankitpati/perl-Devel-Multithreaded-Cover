use strict;
use warnings;

use Test::More;

if ($] < 5.010000) {
    plan skip_all => "Perl version $] is not supported";
} else {
    plan tests => 2;
}

my $cmd = qq[$^X -e "print q(Hello, world.)"];
my $output = `$cmd 2>&1`;
is($output, "Hello, world.", "simple test with perl -e");

$cmd = qq[$^X -Mblib -MDevel::Multithreaded::Cover=-silent,1 -e "print q(Hello, world.)"];
$output = `$cmd 2>&1`;
is($output, "Hello, world.", "test with perl -MDevel::Multithreaded::Cover,-silent,1 -e");
