# Cambridge Perl course
# Lesson 4 Examples

use strict;
use warnings;

# Creating a hash
my %geneticCode = ('TAT' => 'Tyrosine',
                   'TAC' => 'Tyrosine',
                   'CAA' => 'Glutamine',
                   'CAG' => 'Glutamine',
                  );

# Printing hash elements
print $geneticCode{'TAT'};
print "\n";
print "$geneticCode{'CAG'}\n";

# Using the keys and values functions to extract elements from a hash
my @codons = keys %geneticCode;
my @aas = values %geneticCode;
print "@codons\n";
print "@aas\n";

# Changing values of a hash
$geneticCode{'TGA'} = 'Cysteine';
print "$geneticCode{'TGA'}\n";
$geneticCode{'TGA'} = 'STOP'; # Whoops! Got the assignment wrong the first time
print "$geneticCode{'TGA'}\n";

# Deleting elements of a hash
delete $geneticCode{'TGA'};
print "$geneticCode{'TGA'}";