# Cambridge Perl course
# Lesson 11 Exercise 2

use strict;
use warnings;


my $seq = $ARGV[0];
print "Sequence $seq has " . gcpc($seq) . "% GC and is ", length $seq, " bases long\n";

sub gcpc {
    my ($sequence) = @_;
    my $gc_count = 0;
    foreach my $base (split '', $sequence) {
        $gc_count++ if $base eq 'G' or $base eq 'C';
    }
    return int($gc_count / length($sequence) * 100);
}