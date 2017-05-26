#!/usr/bin/env perl
use strict;
use warnings;
use 5.10.0;

my %abbrev;
while (<>) {
    chomp;
    foreach my $n (1..length) {
        my $ss = substr($_, 0, $n);
        $abbrev{$ss} = exists $abbrev{$ss} ? undef : $_;
    }
}
foreach my $key (keys %abbrev) {
    say $key . ' ' . $abbrev{$key} if $abbrev{$key};
}
