# Cambridge Perl course
# Lesson 6 Examples

use strict;
use warnings;

my %geneExpression = ('Beta-Catenin' => 2.5,
                      'Beta-Actin' => 1.7,
                      'Pax6' => 0,
                      'HoxA2' => -3.2,
                     );

# If-elsif-else example
foreach my $gene (keys %geneExpression) {
    if ($geneExpression{$gene} < 0) {
        print "$gene is downregulated\n";
    }
    elsif ($geneExpression{$gene} > 0) {
        print "$gene is upregulated\n";
    }
    else {
        print "No change in expression of $gene\n";
    }
}


# Output nonsynonymous bases
# (positions 1 and 2 of each codon)
my @sequence = ('T','A','C','G','G','C','A','T','C','T','A','G');

my $i = 0;
foreach my $base (@sequence) {
    $i = $i + 1;
    if ($i == 3) {
      $i = 0;
    }
    else {
      print "$base";
    }
}

# 'next' example
$i = 0;
foreach my $base (@sequence) {
    $i = $i + 1;
    if ($i == 3) {
      $i = 0;
      next;
    }
    print "$base";
}
print "\n";

# 'last' example
my %geneticCode = ('TAT' => 'Tyrosine',
                   'TAC' => 'Tyrosine',
                   'CAA' => 'Glutamine',
                   'CAG' => 'Glutamine',
                   'TAG' => 'STOP',
                  );

@sequence = ('CAG','TAC','CAA','TAG','TAC','CAG','CAA');

foreach my $codon (@sequence) {
   if ($geneticCode{$codon} eq 'STOP') {
       last;
   }
   else {
       print "$geneticCode{$codon}\n";
   }
}

# Shorter version of if statement (postfix if)
foreach my $codon (@sequence) {
   last if ($geneticCode{$codon} eq 'STOP');
   print "$geneticCode{$codon}\n";
}


# Compound conditions with 'and' and 'or'
foreach my $gene (keys %geneExpression) {
    if ($geneExpression{$gene} < 0 or $geneExpression{$gene} > 0) {
        print "$gene has changed expression\n";
    }
    else {
        print "$gene has not changed expression\n";
    }

    if ($geneExpression{$gene} > 0 and $gene ne 'Beta-Actin') {
        print "$gene is upregulated and not a housekeeping gene\n";
    }
}