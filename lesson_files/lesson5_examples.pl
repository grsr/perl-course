# Cambridge Perl course
# Lesson 5 Examples

use strict;
use warnings;

my %geneticCode = ('TAT' => 'Tyrosine',
                   'TAC' => 'Tyrosine',
                   'CAA' => 'Glutamine',
                   'CAG' => 'Glutamine',
                  );

# Tedious hash lookup without loops
my @sequence = ('CAA','CAG','TAC');
print $geneticCode{$sequence[0]}, "\n";
print $geneticCode{$sequence[1]}, "\n";
print $geneticCode{$sequence[2]}, "\n";


# Foreach loop through the elements of an array
foreach my $codon (@sequence) {
   print "$geneticCode{$codon}\n";
}

# Foreach loop through the keys of a hash
my %geneExpression = ('Beta-Catenin' => 2.5,
                      'Beta-Actin' => 1.7,
                      'Pax6' => 0,
                      'HoxA2' => -3.2,
                     );

foreach my $gene (keys %geneExpression) {
    print "$gene: $geneExpression{$gene}\n";
}


# While loop over each key in a hash
while (my $gene = each %geneExpression) {
    print "$gene: $geneExpression{$gene}\n";
}

# While loop with iterator variable $i
@sequence = ('CAA','CAG','TAG','CAT','GGT','GAG','GGC','CAG');
my $i = 0;
while ($i<5) {
    print "$sequence[$i] ";
    $i = $i + 1;
}
print "\n";