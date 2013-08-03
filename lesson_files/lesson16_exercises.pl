# Cambridge Perl course
# Lesson 16 Exercise

use strict;
use warnings;

use Data::Dumper;

my %codes;
$codes{'earth'} = {
    'serine'  => [ 'TCA', 'TCC', 'TCG', 'TCT' ],
    'proline' => [ 'CCA', 'CCC', 'CCG', 'CCT' ],
};
$codes{'mars'} = {
    'serine'  => [ 'QWZ', 'QWX', 'QWQ', 'QWW' ],
    'proline' => [ 'ZXZ', 'ZXX', 'ZXQ', 'ZXW' ],
};

my @code_bases = get_code_bases(\%codes);
print Dumper \@code_bases;

sub get_code_bases {
    my ($code_ref) = @_;
    
    my @base_sets;
    for my $code (keys %{$code_ref}) {
        my %bases;
        for my $aa (keys %{$code_ref->{$code}}) {
            for my $codon (@{$code_ref->{$code}{$aa}}) {
                for my $base (split '', $codon) {
                    $bases{$base}++;
                }
            }
        }
        my @code_bases = sort keys %bases;
        push @base_sets, \@code_bases;
    }
    return @base_sets;
}
