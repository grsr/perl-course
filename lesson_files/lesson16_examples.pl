# Cambridge Perl course
# Lesson 16 Examples

use strict;
use warnings;

use Data::Dumper;

# Creating and printing out references
my @codons = ('ACG','GAG','GCG','CCC','AGT','GAA');
my $codon_ref = \@codons;
print "$codon_ref\n";

my %geneticCode = ('TCT' => 'Serine',
                   'TCC' => 'Serine',
                   'TAG' => 'STOP',
                  );

my $geneticCode_ref = \%geneticCode;
print "$geneticCode_ref\n";


# Creating a hash of arrays and printing with Data::Dumper
my @serine = ('TCA','TCC','TCG','TCT');
my @proline =('CCA','CCC','CCG','CCT');

my %aas;
$aas{'serine'} = \@serine;
$aas{'proline'} = \@proline;

print Dumper \%aas;

pop @serine;
shift @proline;

print "After array changes, the hash also changes\n";
print Dumper \%aas;


# Using a hash of hashes of arrays to compare genetic codes

%aas = ('serine' => ['TCA','TCC','TCG','TCT'],
                 'proline' => ['CCA','CCC','CCG','CCT'],
                );

my %codes;
$codes{'earth'} = \%aas;
$codes{'mars'} = {'serine' => ['QWZ','QWX','QWQ','QWW'],
                  'proline' => ['ZXZ','ZXX','ZXQ','ZXW'],
                 };

print Dumper \%codes;

print "$codes{'earth'}{'serine'}[0]\n";
print "$codes{'mars'}{'proline'}[1]\n";


# Dereferencing

my $mars_ref = {'serine' => ['QWZ','QWX','QWQ','QWW'],
                  'proline' => ['ZXZ','ZXX','ZXQ','ZXW'],
               };

my @aas = keys %{$mars_ref};

print "@aas\n";


# Passing complex data structures to subroutines

sub means {
    my @means;
    for my $array_ref (@_) {
        my $length = @{$array_ref};
        my $total = 0;
        for my $num (@{$array_ref}) {
            $total += $num;
        }
        push @means, $total / $length;
    }
    return @means;
}

my @mean_out = means([1,2,3],[4,5,6],[7,8,9]);

print Dumper \@mean_out;