# Cambridge Perl course
# Lesson 15a Examples

use strict;
use warnings;


# Finding a stop codon
my $dna = 'ACTTGATAG';

if ($dna =~ /TAG/) {
    print "$dna contains a stop codon\n";
}
else {
    print "No stop codons found";
}


# Using wildcards, character classes and anchors
$dna = "ACAGGAGGATCTACTGCAGGCCAGCGCGAAGAGACTCATATAGGCAGACGAGAACGTAG";

if ($dna =~ /CTGCAG/) {
    print "Found PstI recognition site\n";
}
if ($dna =~ /GA.TC/) {
    print "Found HinfI recognition site\n";
}
if ($dna =~ /[AG]GATC[TC]/) {
    print "Found XhoII recognition site\n";
}
if ($dna =~ /TAG$/) {
    print "Found STOP codon at the end of the sequence\n";
}

# Using digit, word and whitespace classes and multiple matches
foreach my $genename ("BRCA1","BRCA11","BRCA 1","BRCA1 gene") {
    if ($genename =~ /^\w+\d$/) {
        print "$genename contains one or more word characters, one digit, and nothing else\n";
    }
    else {
        print "$genename contains something other than one or more word characters, one digit and nothing else\n";
    }
    if ($genename =~ /\w+\s*\d+/) {
        print "$genename contains one or more word characters, optional whitespace and one or more digits\n";
    }
    else {
        print "$genename contains something other than one or more word characters, optional whitespace and one or more digits\n";
    }
}