# Cambridge Perl course
# Lesson 5 Exercises

use strict;
use warnings;

# Exercise I
# Create an array containing 15 bases of DNA
my @DNA = ('A', 'C', 'G', 'T', 
           'T', 'C', 'A', 'A',
           'G', 'G', 'C', 'A',
           'T', 'C', 'A');

# Exercise II
# Use a for loop to print each base
# of the sequence on a new line
foreach my $base (@DNA) {
    print "$base\n";
}

# Exercise III
# Use a while loop to print every
# third base in the sequence up to
# and including base 12
my $i = 2;
while ($i<12) {
    print "$DNA[$i] ";
    $i = $i + 3;
}
print "\n";