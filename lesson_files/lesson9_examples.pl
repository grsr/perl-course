# Cambridge Perl course
# Lesson 9 Examples

use strict;
use warnings;

# pop, push, shift and unshift
my @array = ('ACT','GCT','GAG','CAG');
print "Array is @array\n";
my $last = pop @array;
print "Popped the last element off the array: @array. Here's the last element: $last\n";
push @array, 'CGT';
print "Added CGT to the end of the array: @array\n";
my $first = shift @array;
print "Shifted the first element off the array: @array. Here's the first element: $first\n";
unshift @array, 'AAC';
print "Added AAC to the beginning of the array: @array\n";

# splice
@array = ('ACT','GCT','GAG','CAG');
print "Array starts as @array\n";
my @spliced = splice @array, 1, 2;
print "Removed @spliced to leave @array\n";
my @replacement = ('CGG','CCC','AGT','GAC');
@spliced = splice @array, 1, 1, @replacement;
print "Removed @spliced and replaced with @replacement to leave @array\n";

# join
my @bases = ('A','C','G','T','A','C','G','G','T','T','G','A');
my $seq = join '', @bases;
print "@bases is now $seq\n";
$seq = join ':', @bases;
print "We can use separators too: $seq\n";



my %geneExpression = ('Beta-Catenin' => 2.5,
                      'Beta-Actin' => 1.7,
                      'Pax6' => 0,
                      'HoxA2' => -3.2,
                     );

my @genes = ('Pax6','EphB2','HoxA2');

# exists and delete
for my $gene (@genes) {
    if (exists $geneExpression{$gene}) {
        print "Found $gene in hash, has expression $geneExpression{$gene}\n";
        delete $geneExpression{$gene};
    }
    else {
        print "Can't find $gene\n";
    }
}

print "Hash now contains the following genes: ", 
    join(' ', keys %geneExpression), " with the following values: ", 
    join(' ', values %geneExpression), "\n";