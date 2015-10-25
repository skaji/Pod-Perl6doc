use v6;
unit class Pod::Perl6doc;

=begin pod

=head1 NAME

Pod::Perl6doc - perldoc for Perl6

=head1 SYNOPSIS

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

  > perl6doc Str.chars  # you can see a document for a specified method.

=head1 INSTALL

  > panda install git://github.com/shoichikaji/Pod-Perl6doc.git

=head1 DESCRIPTION

Pod::Perl6doc is perldoc for Perl6.

We already has C<p6doc> command in perl6. Why do you use C<perl6doc>?

=item perl6doc renders documentatin in colors.

=item perl6doc caches rendered documentations in C< ~/.perl6doc >, because perl6's parsing pods is too slow.

=head1 SEE ALSO

Perl5 perldoc: L<https://metacpan.org/release/Pod-Perldoc>

=head1 COPYRIGHT AND LICENSE

Copyright 2015 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=head1 BUNDLED MODULE LICENSES

This module bundles a tweak version of Pod::To::Text
which is a part of rakudo. rakudo license is the Artistic License 2.0.
See L<https://github.com/rakudo/rakudo> for further information.

This module bundles a tweak version of Pod::To::SectionFilter
which is a part of perl6/doc. perl6/doc license is the Artistic License 2.0.
See L<https://github.com/perl6/doc> for further information.

=end pod
