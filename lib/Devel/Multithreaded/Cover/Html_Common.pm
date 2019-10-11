package Devel::Multithreaded::Cover::Html_Common;

use strict;
use warnings;

# VERSION

use Exporter;

our @ISA       = "Exporter";
our @EXPORT_OK = "launch";

sub launch {
    my ($package, $opt) = @_;

    my $outfile = "$opt->{outputdir}/$opt->{option}{outputfile}";
    if (eval { require Browser::Open }) {
        Browser::Open::open_browser($outfile);
    } else {
        print STDERR "Devel::Multithreaded::Cover: -launch requires Browser::Open\n";
    }
}

=pod

=head1 NAME

Devel::Multithreaded::Cover::Report::Html_Common - Common code for HTML reporters

=head1 DESCRIPTION

This module provides common functionality for HTML reporters.

=head1 Functions

=over 4

=item launch

Launch a browser to view the report. HTML reporters just need to import this
function to enable the -launch flag for that report type.

=back

=head1 SEE ALSO

Devel::Multithreaded::Cover

=cut

1