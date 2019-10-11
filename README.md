# `Devel::Multithreaded::Cover`

## Code coverage metrics for Multi-Process Perl

This is a fork of the [`Devel::Cover`](http://github.com/pjcj/Devel--Cover
"GitHub") repository, patched to deal with multi-process Perl code.

Despite its name, this module does not currently have plans to deal with true
multithreaded Perl code with `ithreads` and other mechanisms at this time.

To get coverage for an uninstalled module:

    cover -test

or

    cover -delete
    HARNESS_PERL_SWITCHES=-MDevel::Multithreaded::Cover make test
    cover

To get coverage for an uninstalled module which uses Module::Build (0.26 or
later):

    ./Build testcover

If the module does not use the `t/*.t` framework:

    PERL5OPT=-MDevel::Multithreaded::Cover make test

If you want to get coverage for a program:

    perl -MDevel::Multithreaded::Cover yourprog args
    cover

To alter default values:

    perl -MDevel::Multithreaded::Cover=-db,cover_db,-coverage,statement,time yourprog args
