# Cambridge Perl course
# Lesson 8 Examples

use strict;
use warnings;

# Concatenation examples
my $str = "ACG" . "AGA" . "GCG";
print "$str\n";
$str .= "TGT";
print "$str\n";

# length
print length $str, "\n";

# lower case and upper case
$str = lc $str;
print "$str\n";
print uc $str, "\n";
print "ucfirst: " , ucfirst(lc($str)),"\n";
print "lcfirst: " , lcfirst uc $str,"\n";

# chop and chomp
chop $str;
print "Chopped: $str\n";
$str .= "\n";
print "Str now has a new line: $str$str$str";
chomp $str;
print "Now it doesn't: $str$str$str";
print "\n";

# split
my $seq = "ACG AGA GCG TGT";

# splitting at codons
my @codons = split ' ', $seq;
foreach my $codon (@codons) {
    print "$codon\n";
}

# splitting every base, without creating
# an intermediate array like @codons
foreach my $base (split '', $seq) {
    next if $base eq " ";
    print "$base\n";
}

# substr
$str = "ACGAGAGCGTGT";
print substr($str, 3, 3),"\n";
print substr($str, 3), "\n";
print substr($str, -3), "\n";
print substr($str, 3, -3), "\n";