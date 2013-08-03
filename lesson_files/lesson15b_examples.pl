# Cambridge Perl course
# Lesson 15b Examples

use strict;
use warnings;


# Finding any stop codon and capturing it
my $dna = "ACGTGTAG";

if ($dna =~ /(TAG|TAA|TGA)/) {
    print "Found this stop codon: $1\n";
}

# Greedy matching
$dna = 'caccATGAGACAGAACAGTAGgggacagttgcacATGCCAGGACGACCCATATAATAGaca';
$dna = uc $dna;
$dna =~ /(ATG[ACGT]+(TAG|TAA|TGA))/;
print "$1\n";

# Lazy matching
$dna =~ /(ATG[ACGT]+?(TAG|TAA|TGA))/;
print "$1\n";

# Global matching
while ($dna =~ /(ATG[ACGT]+?(TAG|TAA|TGA))/g) {
    print "$1\n";
}

# Substitution
my $dna = "CGAGGAGGATCTACTGCAGGCCAGCGCGAAGAGACTCATATAGGCAGACGAGAACGTCG";

print "$dna\n";
$dna =~ s/CG/TG/;
print "$dna\n"; # Whoops! only mutates the first CG
$dna =~ s/CG/TG/g;
print "$dna\n";

# Using a regexp in split to generate restriction fragments
my $psti = 'CTGCAG';
my $dna = "CGAGGACTGCAGGGATCTACTGCAGGCCAGCGCGAAGAGACTCATATACTGCAGCGTCG";
my @psti_frags = split /$psti/, $dna;
print "Original sequence\n$dna\n";
print "PstI($psti) fragments:\n", join("\n", @psti_frags), "\n"