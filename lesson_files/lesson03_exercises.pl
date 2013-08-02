# Cambridge Perl course
# Lesson 3 Exercises

use strict;
use warnings;

# Amino acid codons from Lesson 2
my $leucine = "TTA";
my $serine = "AGT";
my $tyrosine = "TAT";
my $cysteine = "TGT";

# Exercise I
# Create an array of DNA codons for the protein sequence CLYSY
my @clysy = ($cysteine, $leucine, $tyrosine, $serine, $tyrosine);

# Exercise II
# Print the array with and without spaces between each codon
print "@clysy\n";
print @clysy, "\n";

# Exercise III
# Print the DNA sequence of the last amino acid in CLYSY
print $clysy[-1] ."\n";

# Exercise IV
# Add a STOP codon to the sequence
$clysy[5] = 'TGA';
print "@clysy\n";