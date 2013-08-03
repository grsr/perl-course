# Cambridge Perl course
# Lesson 14 Exercise 1

use strict;
use warnings;

die "Please supply some numbers\n" if @ARGV == 0;

print join "\n", sort {$b <=> $a} @ARGV;
