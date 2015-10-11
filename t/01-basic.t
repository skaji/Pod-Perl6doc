use v6;
use Test;
use Pod::Perl6doc;
use Pod::To::TextPodPerl6doc;
plan 1;

my $s = run $*EXECUTABLE, "-Ilib", "-c", "bin/perl6doc";
is $s.exitcode, 0;
