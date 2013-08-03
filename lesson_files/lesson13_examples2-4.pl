# Cambridge Perl course
# Lesson 13 Examples 2-4

use strict;
use warnings;


# Example 2: opening a file and loading it line by line
my $filename = 'lesson13_file1.txt';

open(my $inputfh, '<' , $filename) or die "can't open $filename\n";
 
while (my $line = <$inputfh>) {
    chomp $line;
    print uc $line , "\n";
}

# Example 3: creating and writing to a new file
my $newfilename = 'lesson13_file2.txt'; 
open(my $newfh , '>' , $newfilename) or die "Can't open $newfilename\n";
 
print $newfh lc "Print this TO a FILE in LOWER case\n";
close $newfh;

# Example 4: processing a tab-delimited data file
my $genefilename = 'lesson13_file3.txt';

open(my $genefh, '<' , $genefilename) or die "Can't open $genefilename\n";

while (my $line = <$genefh>) {
    chomp $line;
    
    my ($gene, $chr, $start, $end) = split "\t", $line;
    
    ## for csv (comma separated files) split on the comma
    # split ',' , $line;
    
    my $length = $end - $start + 1;
    
    print "$gene is on chromosome $chr and is $length bps long\n";
}
close $genefh;