# Cambridge Perl course
# Lesson 14 Examples

use strict;
use warnings;

# Sorting alphabetically
my @array = ('Valine', 'Leucine','Cysteine','Tyrosine');
my @sorted_array = sort @array;
 
foreach my $element (@sorted_array) {
    print "$element\n";
}
 
my @numbers = (3,400,1,100,4,20);
my @sorted_numbers = sort @numbers;
 
foreach my $element (@sorted_numbers) {
    print "$element\n";
}


# Sorting numerically
@sorted_numbers = sort {$a <=> $b}  @numbers;
 
foreach my $element (@sorted_numbers) {
    print "$element\n";
}

# Sorting by length
my @fragments = ( 'TCTCGAATC' , 'TTA' , 'A' , 'GCGTGATGTCGA' , 'GATC' );

my @sorted_by_length = sort { length($b) <=> length($a) } @fragments;

foreach my $element (@sorted_by_length) {
    print "$element\t", length ($element), "\n";
}

# Sorting a hash by values
my %nt_count = (
                 'G' => 2,
                 'C' => 1,
                 'T' => 4,
                 'A' => 3,
                );

@sorted_by_values = sort {$nt_count{$a} <=> $nt_count{$b}} keys %nt_count;

print join ' - ', @sorted_by_values;

print "\n";

foreach my $nt( @sorted_by_values ) {
    print "$nt\t$nt_count{$nt}\n";
}