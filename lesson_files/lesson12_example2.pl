# Cambridge Perl course
# Lesson 12 Example 1

use strict;
use warnings;

if (!defined $ARGV[0]) {
    die "Please supply a file\n";
}

if (!-e $ARGV[0]) {
    die "$ARGV[0] does not exist. Please check the filename and/or location.\n";
}

my $filename = $ARGV[0];

print "$filename is a file that exists!\n";