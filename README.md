NAME
====

Pod::Perl6doc - perldoc for Perl6

SYNOPSIS
========

    > perl6doc [OPTIONS] MODULE

    OPTIONS:
    -l  Display the module's file name
    -m  Display module's file in its entirety
    -h  Show this help

    EXAMPLES:
    > perl6doc File::Find
    > perl6doc -m Panda::Builder
    > perl6doc -l Pod::To::Text

    # for perl6/doc content
    > perl6doc Proc::Async
    > perl6doc 5to6-perlfunc

INSTALL
=======

    > panda install git://github.com/shoichikaji/Pod-Perl6doc.git

DESCRIPTION
===========

Pod::Perl6doc is perldoc for Perl6.

SEE ALSO
========

Perl5 perldoc: [https://metacpan.org/release/Pod-Perldoc](https://metacpan.org/release/Pod-Perldoc)

COPYRIGHT AND LICENSE
=====================

Copyright 2015 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

This module bundles a tweak version of Pod::To::Text which is a part of rakudo. rakudo license is The Artistic License 2.0. See [https://github.com/rakudo/rakudo](https://github.com/rakudo/rakudo) for further information.
