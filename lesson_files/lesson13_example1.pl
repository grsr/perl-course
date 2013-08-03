# Cambridge Perl course
# Lesson 13 Example 1

use strict;
use warnings;

my $file = shift @ARGV; 

open (my $fh , '<' , $file) or die "Can't open $file, $!\n";

print "opened file: $file\n";