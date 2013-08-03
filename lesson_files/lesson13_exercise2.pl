# Cambridge Perl course
# Lesson 13 Exercise 2

use strict;
use warnings;

die "Please supply a filename\n" if !defined $ARGV[0];

my $file = $ARGV[0];
die "$file does not exist!\n" if !-e $file;

open my $fastafh, "<", $file or die "Can't open $file!\n";

my $outfilename = "lesson13_file6.txt";
open my $outfh, ">", $outfilename or die "Can't open output file $outfilename!\n";

while(my $line = <$fastafh>) {
    chomp $line;
    next if (substr($line, 0, 1) eq '>'); # See Lesson 16 on regular expressions
                                          # for a better way to do this!
    print $outfh gcpc($line), "\n";
}

close $outfh;
close $fastafh;
print "Successfully wrote out $outfilename\n";

sub gcpc {
    my ($sequence) = @_;
    my $gc_count = 0;
    foreach my $base (split '', $sequence) {
        $gc_count++ if $base eq 'G' or $base eq 'C';
    }
    return int($gc_count / length($sequence) * 100);
}