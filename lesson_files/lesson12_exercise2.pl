# Cambridge Perl course
# Lesson 12 Exercise 2

use strict;
use warnings;


die "Please supply a filename\n" if !defined $ARGV[0];
die "There is no file called $ARGV[0] in the current directory\n" if !-e $ARGV[0];

my $filesize = -s $ARGV[0];
print "$ARGV[0] is $filesize bytes long\n";