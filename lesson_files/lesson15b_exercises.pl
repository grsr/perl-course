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

sub find_tss {
	my $seq = shift;
	if ($seq =~ /TATTAT(.+)/) {
		print "$1\n";
	}
}

my $seq = '';
open my $fa, '<', 'lesson13_file5.fasta' or die "Can't open FASTA file!\n";

while (my $line = <$fa>) {
	chomp $line;
	if ($line =~ /^>(.+)/) {
		if ($seq ne '') {
			find_tss($seq);
			$seq = '';
		}
	}
	else {
		$seq .= $line;
	}
}
find_tss($seq);
