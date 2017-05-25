#!/usr/bin/env perl
use strict;
use warnings;
use 5.10.0;

my $seq = 1;
foreach (1..<>) {
    say $seq;
    $seq =~ s/(.)\1*/(length $&) . $1/ge;
}
