# Cambridge Perl course
# Lesson 4 Exercises

use strict;
use warnings;

# Exercise I
# Print an amino acid sequence for the DNA sequence
# GTT GCA CCA CAA CCG GTT GTG

my %code = (
    'GTT' => 'V',
    'GCA' => 'A',
    'CCA' => 'P',
    'CAA' => 'Q',
    'CCG' => 'P',
    'GTG' => 'V'
);

# Printing direct from the hash

# One by one
print $code{'GTT'};
print $code{'GCA'};
print $code{'CCA'};
print $code{'CAA'};
print $code{'CCG'};
print $code{'GTT'};
print $code{'GTG'};
print "\n";

# Or in one print statement
print "$code{'GTT'}$code{'GCA'}$code{'CCA'}$code{'CAA'}$code{'CCG'}$code{'GTT'}$code{'GTG'}\n";


# Printing using an array
my @codons = ("GTT","GCA","CCA","CAA","CCG","GTT","GTG");

print $code{$codons[0]};
print $code{$codons[1]};
print $code{$codons[2]};
print $code{$codons[3]};
print $code{$codons[4]};
print $code{$codons[5]};
print $code{$codons[6]};
print "\n";

# Exercise II
# We can't build a hash where the keys are amino acids
# and the values are codons because the amino acids have
# multiple codons, but keys must be unique.
# (But see Lesson 17...)
