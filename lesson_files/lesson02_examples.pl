# Cambridge Perl course
# Lesson 2 Examples

# Always use strict and use warnings, so Perl will report
# possible problems with your code
use strict;
use warnings;

# EXAMPLES

# Creating scalar variables and assigning values
my $serine = "TCA";
my $codonLength = 3;
print "Codon $serine has $codonLength bases\n";

$serine = "TCC";
print "Serine is also coded by $serine\n";

# Using the value of a variable; introducing +
my $age = 18;
print "I am $age years old\n";
$age = $age + 2;
print "I will be $age years old two years later\n";


# Introducing '.', the text concatenation operator
my $dogma = "Once information gets into protein";
print "1: $dogma\n";
$dogma = $dogma . " it cannot get out again";
print "2: $dogma\n"; 
$dogma = "DNA makes RNA makes Protein";
print "3: $dogma\n";

# The difference between single and double quotes
my $codon = "ACG";
print "$codon\n";
print '$codon\n';