# Cambridge Perl course
# Lesson 12 Example 1

use strict;
use warnings;

my $arg_1;
 
if (defined $ARGV[0]){
    $arg_1 = $ARGV[0];
    print "Here's your number: $arg_1\n";
}
else {
    die "Please supply a number\n";
}