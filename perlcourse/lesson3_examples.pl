# Cambridge Perl course
# Lesson 3 Examples

use strict;
use warnings;

# Creating arrays
my @numbers = (22,103,1,0);
my @aminoAcids = ("Serine","Tyrosine","Leucine","Tyrosine","Cysteine");
my $serine = "TCA";
my @mixed = (23,$serine,0.3,"Histone");


# Printing an array with no spaces between the elements
print "Amino acids: " , @aminoAcids , "\n";

# Printing an array with spaces
print "Amino acids, spaced: @aminoAcids\n";

# Indexing array elements 
print $aminoAcids[2], "\n";
print $aminoAcids[0], "\n";
print $aminoAcids[-1], "\n";

# Assigning new values to array elements
$aminoAcids[2] = "Cysteine";
print "@aminoAcids\n";
$aminoAcids[5] = "STOP";
print "@aminoAcids\n";

# Merging two arrays creates one flat array
my @serine = ('T','C','A');
print "@serine\n";

my @cysteine = ('T', 'G', 'T');
print "@cysteine\n";

my @sc = (@serine, @cysteine);
print "@sc\n";

print "$sc[4]\n";

# Finding the length of an array by using the array in scalar context
my $length = @serine;
print "$length\n";