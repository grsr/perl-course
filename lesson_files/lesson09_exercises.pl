# Cambridge Perl course
# Lesson 9 Exercises

use strict;
use warnings;

# We are given the following data:
my %geneticCode = ('TCT' => 'Serine',
                   'TCC' => 'Serine',
                   'CTA' => 'Leucine',
                   'CTG' => 'Leucine',
                   'TGT' => 'Cysteine',
                   'TAG' => 'STOP',
                  );

my $sequence = 'TCCTGTCTACCCCTGAAGTCTTAG';


# Convert DNA sequence to amino acid sequence
my $protein = "";
my $i = 0;
while ($i < length $sequence) {
    my $codon = substr $sequence, $i, 3;
    if (exists $geneticCode{$codon}) {
        my $aa = $geneticCode{$codon};
        if ($aa eq 'STOP') {
            $protein .= '*';
        }
        else {
            $protein .= substr $aa, 0, 1;
        }
    }
    else {
        $protein .= '?';
    }
    $i += 3;
}

print "$protein\n";

