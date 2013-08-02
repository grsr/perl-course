# Cambridge Perl course
# Lesson 7 Examples

use strict;
use warnings;

# Basic maths operators
# addition
print "sum of 2 and 3 = ";
my $num = 2 + 3;
print "$num\n";

# subtraction
print "$num minus 2 = ";
$num = $num - 2;
print "$num\n";

# multiplication
print "product of $num and 2 = ";
$num = $num * 2;
print "$num\n";

# division
print "$num divided by 2 = ";
$num = $num / 2;
print "$num\n";

# modulus
print "the remainder of $num divided by 2 = ";
my $remainder = $num % 2;
print "$remainder\n";

# exponentiation
print "$num raised to the power 2 = ";
$num = $num ** 2;
print "$num\n";



# *=, ++ and -- operators
$num = 1;

print "Number was $num,";
$num *= 5;
$num += 3;

print " now $num\n";

# increment in place
print "$num + 1 = ";
$num++;
print "$num\n";

# decrement in place
print "$num - 1 = ";
$num--;
print "$num\n";


# abs function
print "the absolute value of 3 - 4.2 = ";
$num = abs 3 - 4.2;
print "$num\n";

# int function
print "int portion of $num = ";
print int $num, "\n";

# Bracketing examples
$num = abs(3 - 4.2);
print(int($num), "\n");