# Cambridge Perl course
# Lesson 15b Exercises

use strict;
use warnings;


my $dna = "ACAGGAGCGATCGTACTGCAGGCCAAAGAGACTCATATAGGCAGACGAGAACGTAG";

# Exercise I
# Transcribe DNA into RNA.
print "$dna\n";
$dna =~ s/T/U/g;
print "$dna\n";


# Exercise II
# Print out sequences from a FASTA file downstream of a transcription start site

my $header;
my $seq;
my %faseqs;

open my $fa, '<', 'lesson13_file5.fasta' or die "Can't open FASTA file!\n";

my $foundsite = 0;
while (my $line = <$fa>) {
    chomp $line;
    if ($line =~ /^>(.+)$/) {
        $header = $1;
        $foundsite = 0;
        $faseqs{$header} = '-';
    }
    elsif ($foundsite == 1) {
        $faseqs{$header} .= $line;
    }
    elsif ($line =~ /TATTAT(.+)/) {
        $faseqs{$header} = $1;
        $foundsite = 1;
    }
}
close $fa;

foreach my $name (keys %faseqs) {
    print "$name\t$faseqs{$name}\n";
}