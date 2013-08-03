# Cambridge Perl course
# Lesson 13 Exercise 1

use strict;
use warnings;

die "Please supply a filename\n" if !defined $ARGV[0];

my $file = $ARGV[0];
die "$file does not exist!\n" if !-e $file;

open(my $dnafh, "<", $file);

my $linenum = 1;
while(my $line = <$dnafh>) {
    chomp $line;
    my $length = length $line; 
    print "Line $linenum is $length bp long\n";
    $linenum++;
}

close $dnafh;
