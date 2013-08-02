# Cambridge Perl course
# Lesson 11 Exercise 2

use strict;
use warnings;


if (exists $ARGV[0]) {
    my $seq = $ARGV[0];
    print "Sequence $seq has " . gcpc($seq) . "% GC and is ", length $seq, " bases long\n";
}
else {
    print "Please provide a DNA sequence\n";
}

sub gcpc {
    my ($sequence) = @_;
    my $gc_count = 0;
    foreach my $base (split '', $sequence) {
        $gc_count++ if $base eq 'G' or $base eq 'C';
    }
    return int($gc_count / length($sequence) * 100);
}