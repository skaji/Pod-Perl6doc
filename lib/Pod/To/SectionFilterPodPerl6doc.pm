=begin pod

Original is https://raw.githubusercontent.com/perl6/doc/master/lib/Pod/To/SectionFilter.pm

LINCENSE The Artistic License 2.0
See https://github.com/perl6/doc/blob/master/LICENSE

!!!!! DO NOT USE THIS MODULE! THIS IS Pod-Perl6doc INTERNAL ONLY !!!!
=end pod

use Pod::To::TextPodPerl6doc;
class Pod::To::SectionFilterPodPerl6doc {
    method render(@pod) {
        my $search_for = %*ENV<PERL6_POD_HEADING> // die 'env var missing';
        my @blocks := @pod[0].contents;
        my $from;
        my $heading-level;
        for @blocks.kv -> $idx, $b {
            if $b ~~ Pod::Heading && $b.contents[0].contents[0] ~~ m:i:s/^ [method|sub|routine] $search_for $/ {
                $from = $idx;
                $heading-level = $b.level;
            }
        }
        return
            unless defined $from;

        my $to = @blocks.end;
        for $from + 1 .. @blocks.end -> $i {
            if @blocks[$i] ~~ Pod::Heading && @blocks[$i].level <= $heading-level {
                $to = $i - 1;
                last;
            }
        }
        Pod::To::TextPodPerl6doc.render(@blocks[$from..$to]);
    }
}

# vim: expandtab shiftwidth=4 ft=perl6
