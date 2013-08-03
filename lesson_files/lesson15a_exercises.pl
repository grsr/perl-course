# Cambridge Perl course
# Lesson 15a Exercises

use strict;
use warnings;


my $dna = "ACAGGAGCGATCGTACTGCAGGCCAgcgcgAAGAGACTCATATAGGCAGACGAGAACGTAG";

# Exercise I
# Check for CG dinucleotides

if ($dna =~ /CG/) {
    print "Found CG dinucleotide\n";
}

# Exercise II
# Check if a string contains only DNA bases, allowing upper and lower case
if ($dna =~ /^[ACGTacgt]+$/) {
    print "Sequence only contains DNA nucleotides\n";
}

# Exercise III
# Find (GA)C(ACGT)G methylation sites
if ($dna =~ /[GA]C[ACGT]G/) {
    print "Sequence contains a methylation site\n";
}