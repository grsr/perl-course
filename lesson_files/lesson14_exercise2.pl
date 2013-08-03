# Cambridge Perl course
# Lesson 14 Exercise 2

use strict;
use warnings;

die "Please supply a DNA sequence\n" if @ARGV != 1;

my $dna = shift;
my %nt_count;

foreach my $nt (split '', $dna) {
      $nt_count{$nt}++;
}

foreach my $nt (sort {$nt_count{$a}<=>$nt_count{$b}} keys %nt_count) {
    print "$nt:$nt_count{$nt}\n";
}