How to Contribute to Devel::Multithreaded::Cover
---------------------------------

Source Code
-----------

The source code can be found at https://github.com/pjcj/Devel--Cover

Github is the main repository and the location to file bug reports and send
pull requests.  There are still some old bug reports in RT which are described
in https://github.com/pjcj/Devel--Cover/issues/35

I welcome all contributions, be they in the form of code, bug reports,
suggestions, documentation, discussion or anything else.  In general, and as
with most open source projects, it is wise to dicuss any large changes before
starting on implementation.

HTML report generation
----------------------

Devel::Multithreaded::Cover::Web contains a number of static files that are saved when a
report is generated:
    cover.css
    common.js
    css.js
    standardista-table-sorting.js

Report formats are:
    html|html_minimal (default)
    html_basic
    html_subtle

They are implemented in:
    Devel::Multithreaded::Cover::Report::Html is just a subclass of
        Devel::Multithreaded::Cover::Report::Html_minimal
    Devel::Multithreaded::Cover::Report::Html_basic
    Devel::Multithreaded::Cover::Report::Html_subtle  exists, but is probably not used by anyone.

*Minimal* was written by Michael Carman.  One of the goals was to keep the
output as small as possible and he decided not to use templates.
Unfortunately, minimal does not handle uncovered code correctly and, whilst the
truth tables are nice, they are not always correct when there are many
variables.  This is currently the default.

*Basic* handles uncovered code correctly and the conditions are displayed
correctly, if not as nicely as in minimal.  It also allows for coloured code.

How to run Devel::Multithreaded::Cover from Git
--------------------------------
cd some_dir/
perl -I/home/foobar/work/Devel--Cover/lib/ /home/foobar/work/Devel--Cover/bin/cover --test -report html_basic

CPAN Cover
----------

http://cpancover.com/

Devel::Multithreaded::Cover::Collection is used by bin/cpancover and has some templates in it.

In order to run cpancover a few extra modules are needed:
    Template and Parallel::Iterator
