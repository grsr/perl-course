# Use a system call to the 'ls' command to print out all perl files in the current directory in uppercase

use strict;
use warnings;

my @files = `ls`;

for my $file (@files) {
    chomp $file;
    if (substr($file, -3, 3) eq ".pl") {
        print uc $file, "\n";
    }
}

