# Cambridge Perl course
# Lesson 10 Examples

use strict;
use warnings;

# Using core modules
# For List::Util documentation, see
# http://perldoc.perl.org/List/Util.html

use List::Util ('max', 'min');

my @genome_mb = (100.3, 2700, 4.6, 3200, 12.1);

print max(@genome_mb), "\n";
print min(@genome_mb), "\n";

# Defining our own max subroutine
@genome_mb = (100.3, 2700);

sub maximum {
    my ($a, $b)= @_;
    
    if ($a > $b) {
        return $a;
    }
    else {
        return $b;
    }
}

my $max = maximum(@genome_mb);

print "Maximum genome size in our list is $max Mb\n";


# Simplifying our max subroutine a little
sub maximum2 {
    my $a = shift;
    my $b = shift;
    return ($a > $b) ? $a : $b;
}

$max = maximum2 @genome_mb; # Can call without brackets

print "Maximum genome size in our list is $max Mb\n";