# Cambridge Perl course
# Lesson 11 Exercise 1

use strict;
use warnings;

# Google will help you find this module...
use Scalar::Util ('looks_like_number');

if (exists $ARGV[0] and exists $ARGV[1]) {
    if (exists $ARGV[2]) {
        print "Please supply only two numbers";
    }
    elsif (looks_like_number($ARGV[0]) and looks_like_number($ARGV[1])) {
        print $ARGV[0] + $ARGV[1];
    }
    else {
        print "Arguments are not both numbers";
    }
}
else {
    print "Please supply two numbers";
}
print "\n";
