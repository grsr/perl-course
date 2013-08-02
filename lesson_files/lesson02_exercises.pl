# Cambridge Perl course
# Lesson 2 Exercises

# Always use strict and use warnings, so Perl will report
# possible problems with your code
use strict;
use warnings;

# Exercise I
# Create variables for serine, leucine, tyrosine and cysteine,
# picking just one codon for each amino acid
# leucine=TTA (or TTG, CTT, CTC, CTA, CTG)
my $leucine = "TTA";
# serine=AGT (or TCT, TCC, TCA, TCG, AGC)
my $serine = "AGT";
# tyrosine=TAT (or TAC)
my $tyrosine = "TAT";
# cysteine=TGT (or TGC)
my $cysteine = "TGT";

# Exercise II
# Print DNA sequence for the protein sequence SYLYC
# (using the concatenation operator)

my $dogma = $serine . $tyrosine . $leucine . $tyrosine . $cysteine;
print "$dogma\n";

# Another method, without the concatenation operator
print "SYLYC: $serine $tyrosine $leucine $tyrosine $cysteine\n";
