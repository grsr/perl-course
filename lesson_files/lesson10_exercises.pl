# Cambridge Perl course
# Lesson 10 Exercises

use strict;
use warnings;


# Exercise I
# Write a subroutine that takes two arguments
# and returns their mean
sub mean1 {
    my $a = shift;
    my $b = shift;
    my $mean = ($a+$b)/2;
    return $mean;
}

print mean1(5,10), "\n";

# Exercise II
# Write a subroutine that takes an array
# containing any number of arguments
# and calculates the mean of all of them
sub mean2 {
    my @nums = @_;
    my $sum = 0;
    foreach my $num (@nums) {
        $sum += $num;
    }
    return $sum/@nums;
}

my @genome_mb = (100.3, 2700, 4.6, 3200, 12.1);
print mean2(@genome_mb), "\n";

# Exercise III
# Write a subroutine that takes a sequence as input
# and returns the GC percentage, rounded to the nearest integer
my $seq = "ACAGATTTAGACCGAGATTAA";

print "Sequence $seq has " . gcpc($seq) . "% GC\n";
sub gcpc {
    my ($sequence) = @_;
    my $gc_count = 0;
    foreach my $base (split '', $sequence) {
        $gc_count++ if $base eq 'G' or $base eq 'C';
    }
    return int($gc_count / length($sequence) * 100);
}