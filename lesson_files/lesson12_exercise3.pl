# Cambridge Perl course
# Lesson 12 Exercise 3

use strict;
use warnings;

# Google will help you find this module...
use Scalar::Util ('looks_like_number');

if (@ARGV == 2 and looks_like_number($ARGV[0]) and looks_like_number($ARGV[1])) {
    print $ARGV[0] + $ARGV[1];
}
else {
    print "Please supply two numbers";
}
print "\n";
