# Cambridge Perl course
# Lesson 8 Exercises

use strict;
use warnings;

# Exercise I
# Print out the codons of a DNA sequence
# using a while loop and substr;
# check that the sequence has complete codons first
# (ie the length of the sequence is divisible by 3)

my $dna = "ACAGATTAGGTGCCAGATTCGAGATGC"; # Try changing the length of this

if (length($dna) % 3 == 0) {
    my $i = 0;
    while ($i < length $dna) {
        my $codon = substr $dna, $i, 3;
        print "$codon\n";
        $i += 3;
    }
}
else {
    print "DNA does not have complete codons!\n";
}
