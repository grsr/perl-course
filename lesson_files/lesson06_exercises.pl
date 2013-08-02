# Cambridge Perl course
# Lesson 6 Exercises

use strict;
use warnings;

# Exercise I
# Calculate GC content of a DNA sequence;
# start by creating a DNA sequence array
# and a variable that we will use to count
# the number of GC bases in the sequence

my @DNA = ('A', 'C', 'G', 'T', 
           'T', 'C', 'A', 'A',
           'G', 'G', 'C', 'A',
           'T', 'C', 'A');
my $gc_count = 0;

# Exercise II
# Run through the sequence using a for loop,
# adding one to $gc_count if a base is G or C
foreach my $base (@DNA) {
    if ($base eq 'G' or $base eq 'C') {
        $gc_count = $gc_count + 1;
    }
}

print "$gc_count\n";

# Exercise III
# Calculate the GC percentage
my $gcpc = $gc_count / @DNA * 100;
print "The sequence has " . @DNA . " bases and GC content is $gcpc\n";
