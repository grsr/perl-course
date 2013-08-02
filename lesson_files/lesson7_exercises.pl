# Cambridge Perl course
# Lesson 7 Exercises

use strict;
use warnings;

my @DNA = ('A', 'C', 'G', 'T', 
           'T', 'C', 'A', 'A',
           'G', 'G', 'C', 'A',
           'T', 'C', 'A');

# Exercise I
# Slightly simplified GC calculation
# Using ++ and postfix if
my $gc_count = 0;

foreach my $base (@DNA) {
    $gc_count++ if $base eq 'G' or $base eq 'C'
}

# Exercise II
# Calculate the GC percentage as an integer
my $gcpc = int($gc_count / @DNA * 100);
print "The sequence has " . @DNA . " bases and GC content is $gcpc\n";
