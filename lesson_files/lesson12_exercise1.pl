# Cambridge Perl course
# Lesson 12 Exercise 1

use strict;
use warnings;

if (@ARGV == 2) {
    print $ARGV[0] + $ARGV[1];
}
else {
    print "Please supply two arguments";
}
print "\n";